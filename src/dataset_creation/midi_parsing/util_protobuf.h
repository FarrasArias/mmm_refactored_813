#pragma once

#include <google/protobuf/util/json_util.h>

#include <cmath>
#include <vector>
#include <algorithm>
#include "../../../libraries/protobuf/build/midi.pb.h"
#include "../data_structures/track_type.h"
#include "../data_structures/encoder_config.h"

// START OF NAMESPACE
namespace util_protobuf {

// Checks if tracks has features and returns them
midi::TrackFeatures* GetTrackFeatures(midi::Piece *midi_piece, int track_num) {
	if ((track_num < 0) || (track_num >= midi_piece->tracks_size())) {
		throw std::runtime_error("TRACK FEATURE REQUEST OUT OF RANGE");
	}
	//we return a pointer to the mutable track object with index track_num and we store the pointer in midi_track
	midi::Track *midi_track = midi_piece->mutable_tracks(track_num);
	if (midi_track->internal_features_size() == 0) {
		//adds new element to end of field and returns a pointer. The returned track features is mutable and will have none of its fields set.
		return midi_track->add_internal_features(); 
	}
	//returns a pointer to the underlying mutable track object with index track_num and we return the pointer
	//TODO: Does it make sense that TrackFeatures is a repeated field, and we always return the index 0??
	return midi_track->mutable_internal_features(0);
}

// Get the number of bars in a piece
int GetNumBars(midi::Piece *midi_piece) {
	if (midi_piece->tracks_size() == 0) {
		return 0;
	}
	std::set<int> track_num_bars;
	for (const auto track : midi_piece->tracks()) {
		track_num_bars.insert( track.bars_size() );
	}
	if (track_num_bars.size() > 1) {
		throw std::runtime_error("Each track must have the same number of bars!");
	}
	//we dereference the pointer to the first element in the set (in this case the only element)
	return *track_num_bars.begin();
}

// ================================================================
// Functions to update the note_polyphony field in the midi::Tracks of a midi::Piece
// ================================================================

midi::Note CreateNote(int start, int end, int pitch) {
	midi::Note note;
	note.set_start(start);
	note.set_end(end);
	note.set_pitch(pitch);
	return note;
}

// Go over all the bars and convert midi::events to midi::notes
// TODO: Is there a way to decouple this function from its parent (obtain *duration_in_ticks some other way)
std::vector<midi::Note> IterateAndConvert(midi::Piece* midi_piece, const midi::Track* current_track, bool bool_drum_track, int* duration_in_ticks) {
	midi::Event current_midi_event;
	std::vector<midi::Note> notes;
	std::map<int, int> onsets;
	int bar_start = 0;
	for (int bar_num = 0; current_track->bars_size(); bar_num++) {
		const midi::Bar bar = current_track->bars(bar_num);
		for (auto event_id : bar.events()) {
			current_midi_event = midi_piece->events(event_id);
			if (current_midi_event.velocity() > 0) {
				onsets[current_midi_event.pitch()] = current_midi_event.time();
			}
			else {
				auto last_event_with_pitch = onsets.find(current_midi_event.pitch());
				int end_time = bool_drum_track ? last_event_with_pitch->second + 1 : current_midi_event.time();
				if (last_event_with_pitch != onsets.end()) {
					midi::Note note = CreateNote(last_event_with_pitch->second, end_time, last_event_with_pitch->first);
					notes.push_back(note);
					onsets.erase(last_event_with_pitch);
				}
			}
			*duration_in_ticks = std::max(*duration_in_ticks, bar_start + current_midi_event.time());
		}
		bar_start += midi_piece->resolution() * bar.internal_beat_length();
	}
	return notes;
}

// Get a specific track from a midi piece and convert its midi::events to midi::notes
std::vector<midi::Note> TrackEventsToNotes(midi::Piece* midi_piece, int track_num, int* duration_in_ticks) {
	bool bool_drum_track = data_structures::is_drum_track(midi_piece->tracks(track_num).track_type()); //TODO: this should be renamed is_drum_track = check_if_drum_track()... refactor
	const midi::Track* current_track = &(midi_piece->tracks(track_num));
	std::vector<midi::Note> notes = IterateAndConvert(midi_piece, current_track, bool_drum_track, duration_in_ticks); //TODO: This is a mayor change, but maybe the .proto shouldn't keep the events int the Piece, and instead keep them in the track message type
	return notes;
}

// Get the notes playing simultaneously per tick and return the tick with most note count.
int GetTrackMaxPolyphony(std::vector<midi::Note>& notes, int duration_in_ticks) {
	if (duration_in_ticks > 100000) {
		throw std::runtime_error("MAX TICK TO LARGE!");
	}
	int max_polyphony = 0;
	std::vector<int> flat_roll(duration_in_ticks, 0);
	for (const auto note : notes) {
		for (int tick = note.start(); tick < note.end(); tick++) {
			flat_roll[tick]++;
			// TODO: Check... why are we checking the whole roll every note... 
			// couldn't we just get the max from the roll once we did all the ++? 
			max_polyphony = std::max(flat_roll[tick], max_polyphony); 
		}
	}
	return max_polyphony;
}

// Iterate over the tracks of a midi piece and update the max_polyphony field in each
void UpdateMaxPolyphony(midi::Piece* midi_piece) {
	for (int track_num = 0; track_num < midi_piece->tracks_size(); track_num++) {
		int duration_in_ticks = 0;
		std::vector<midi::Note> notes = TrackEventsToNotes(midi_piece, track_num, &duration_in_ticks);
		GetTrackFeatures(midi_piece, track_num)->set_max_polyphony(GetTrackMaxPolyphony(notes, duration_in_ticks));
	}
}

// ================================================================
// Functions to convert a polyphonic track to a monophonic one
// ================================================================

// We create an array of monophonic events
// we iterate over events
// if an event starts, we flag it.
// if another event starts before the flag is down, we force the first event to end and 
// be pushed in the array. We then flag the new event as being played
// if the event ends before another starts, we just push it in the array

void StopAndPushEvent(const auto &midi_event, std::vector<midi::Event> &mono_events, midi::Event &last_onset, bool &note_sounding) {
	mono_events.push_back(last_onset);
	midi::Event offset;
	offset.CopyFrom(last_onset);
	offset.set_time(midi_event.time());
	offset.set_velocity(0);
	mono_events.push_back(offset);
	note_sounding = false;
}

std::vector<midi::Event> ConvertToMonophonic(std::vector<midi::Event> &events) {
	bool note_sounding = false;
	midi::Event last_onset;
	std::vector<midi::Event> mono_events;
	for (const auto midi_event : events) {
		if (midi_event.velocity() > 0) {
			if ((note_sounding) && (midi_event.time() > last_onset.time())) {
				StopAndPushEvent(midi_event, mono_events, last_onset, note_sounding);
			}
			last_onset.CopyFrom( midi_event );
			note_sounding = true;
		}
		else if ((note_sounding) && (last_onset.pitch() == midi_event.pitch())) {
			mono_events.push_back( last_onset );
			mono_events.push_back( midi_event );
			note_sounding = false;
		}
	}

	return mono_events;
}


// TODO: CHECK FUNCTIONS BELOW THIS LINE. 
// No idea what update valid segments does.

// ========================================================================
// EMPTY BARS

void UpdateHasNotes(midi::Piece* midi_piece) {
	int track_num = 0;
	for (const auto track : midi_piece->tracks()) {
		int bar_num = 0;
		for (const auto bar : track.bars()) {
			bool has_notes = false;
			for (const auto event_index : bar.events()) {
				if (midi_piece->events(event_index).velocity() > 0) {
					has_notes = true;
					break;
				}
			}
			midi_piece->mutable_tracks(track_num)->mutable_bars(bar_num)->set_internal_has_notes(has_notes);
			bar_num++;
		}
		track_num++;
	}
}

// ========================================================================
// RANDOM SEGMENT SELECTION FOR TRAINING
// 
// 1. we select an index of a random segment


void UpdateValidSegments(midi::Piece *midi_piece, int seglen, int min_tracks, bool opz) {
	UpdateHasNotes(midi_piece);
	midi_piece->clear_internal_valid_segments();
	midi_piece->clear_internal_valid_tracks();

	if (midi_piece->tracks_size() < min_tracks) { return; } // no valid tracks

	int min_non_empty_bars = round(seglen * .75);
	int num_bars = GetNumBars(midi_piece);
	
	for (int start=0; start<num_bars-seglen+1; start++) {
		
		// check that all time sigs are supported
		bool supported_ts = true;
		bool is_four_four = true;
		// for now we ignore this as its better to just keep all the data and
		// prune at training time, as the encoding will fail.
		

		// check which tracks are valid
		midi::ValidTrack vtracks;
		std::map<int,int> used_track_types;
		for (int track_num=0; track_num<midi_piece->tracks_size(); track_num++) {
			int non_empty_bars = 0;
			for (int k=0; k<seglen; k++) {
				if (midi_piece->tracks(track_num).bars(start+k).internal_has_notes()) {
					non_empty_bars++;
				}
			}
			if (non_empty_bars >= min_non_empty_bars) {
				vtracks.add_tracks( track_num );
				if (opz) {
					// product of train types should be different
					int combined_train_type = 1;
					for (const auto train_type : midi_piece->tracks(track_num).internal_train_types()) {
						combined_train_type *= train_type;
					}
					used_track_types[combined_train_type]++;
				}
			}
		}

		// check if there are enough tracks
		bool enough_tracks = vtracks.tracks_size() >= min_tracks;
		if (opz) {
			// for OPZ we can't count repeated track types
			// as we train on only one track per track type
			bool opz_valid = used_track_types.size() >= min_tracks;
			
			// also valid if we have more than one multi possibility track
			auto it = used_track_types.find(
				midi::OPZ_ARP_TRACK * midi::OPZ_LEAD_TRACK);
			opz_valid |= ((it != used_track_types.end()) && (it->second > 1));

			it = used_track_types.find(
				midi::OPZ_ARP_TRACK * midi::OPZ_LEAD_TRACK * midi::OPZ_CHORD_TRACK);
			opz_valid |= ((it != used_track_types.end()) && (it->second > 1));

			enough_tracks &= opz_valid;
		}

		if (enough_tracks && is_four_four) {
			midi::ValidTrack *v = midi_piece->add_internal_valid_tracks_v2();
			v->CopyFrom(vtracks);
			midi_piece->add_internal_valid_segments(start);
		}
	}
}
}
// END OF NAMESPACE