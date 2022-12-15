#pragma once

#include "../../../libraries/protobuf/build/midi.pb.h"

// START OF NAMESPACE
namespace data_structures {

std::map<midi::TRACK_TYPE,bool> TRACK_TYPE_IS_DRUM = {
  {midi::OPZ_KICK_TRACK, true},
  {midi::OPZ_SNARE_TRACK, true},
  {midi::OPZ_HIHAT_TRACK, true},
  {midi::OPZ_SAMPLE_TRACK, false},
  {midi::OPZ_BASS_TRACK, false},
  {midi::OPZ_LEAD_TRACK, false},
  {midi::OPZ_ARP_TRACK, false},
  {midi::OPZ_CHORD_TRACK, false},
  {midi::AUX_DRUM_TRACK, true},
  {midi::AUX_INST_TRACK, false},
  {midi::STANDARD_TRACK, false},
  {midi::STANDARD_DRUM_TRACK, true}
};

bool is_drum_track(int tt) {
  return TRACK_TYPE_IS_DRUM[static_cast<midi::TRACK_TYPE>(tt)];
}

//bool is_opz_track(int tt) {
//  return tt <= static_cast<midi::TRACK_TYPE>(midi::OPZ_CHORD_TRACK);
//}

// drums are on channel 10
// 0 is all other channels
// more to be filled in later ...
// for i in range(128):
//   print("NONE, //{}".format(i))


}
// END OF NAMESPACE