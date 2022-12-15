#pragma once
  
#include <vector>
#include <tuple>
#include <map>

namespace data_structures {
    class EncoderConfig { //IDGOOD
    public:
        EncoderConfig() {
            both_in_one = false;
            unquantized = false;
            interleaved = false;
            multi_segment = false;
            te = false;
            do_fill = false;
            do_multi_fill = false;
            do_track_shuffle = true;
            do_pretrain_map = false;
            force_instrument = false;
            mark_note_duration = false;
            mark_polyphony = false;
            density_continuous = false;
            mark_genre = false;
            mark_density = false;
            mark_instrument = true;
            mark_polyphony_quantile = false;
            mark_note_duration_quantile = false;
            mark_time_sigs = false;
            allow_beatlength_matches = true;
            instrument_header = false;
            use_velocity_levels = false;
            genre_header = false;
            piece_header = true;
            bar_major = false;
            force_four_four = false;
            segment_mode = false;
            force_valid = false;
            use_drum_offsets = true;
            use_note_duration_encoding = false;
            use_absolute_time_encoding = false;
            mark_num_bars = false;
            mark_drum_density = false;
            mark_pitch_limits = false;
            embed_dim = 0;
            transpose = 0;
            seed = -1;
            segment_idx = -1;
            fill_track = -1;
            fill_bar = -1;
            max_tracks = 12;
            resolution = 12;
            default_tempo = 104;
            num_bars = 4;
            min_tracks = 1;
            fill_percentage = 0;
        }
        bool both_in_one;
        bool unquantized;
        bool interleaved;
        bool multi_segment;
        bool te;
        bool do_fill;
        bool do_multi_fill;
        bool do_track_shuffle;
        bool do_pretrain_map;
        bool force_instrument;
        bool mark_note_duration;
        bool mark_polyphony;
        bool density_continuous;
        bool mark_genre;
        bool mark_density;
        bool mark_instrument;
        bool mark_polyphony_quantile;
        bool mark_note_duration_quantile;
        bool mark_time_sigs;
        bool allow_beatlength_matches;
        bool instrument_header;
        bool use_velocity_levels;
        bool genre_header;
        bool piece_header;
        bool bar_major;
        bool force_four_four;
        bool segment_mode;
        bool force_valid;
        bool use_drum_offsets;
        bool use_note_duration_encoding;
        bool use_absolute_time_encoding;
        bool mark_num_bars;
        bool mark_drum_density;
        bool mark_pitch_limits;
        int embed_dim;
        int transpose;
        int seed;
        int segment_idx;
        int fill_track;
        int fill_bar;
        int max_tracks;
        int resolution;
        int default_tempo;
        int num_bars;
        int min_tracks;
        float fill_percentage;
        std::set<std::tuple<int, int>> multi_fill;
        std::vector<std::string> genre_tags;
    };
}