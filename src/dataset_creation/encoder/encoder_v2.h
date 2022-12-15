#pragma once

#include <limits>

#include "encoder_base.h"
#include "../data_structures/track_type.h"
#include "../midi_parsing/util_protobuf.h"
#include "../data_structures/representation.h"

// START OF NAMESPACE
namespace encoder {

class TrackEncoder : public encoder_base::ENCODER { //IDGOOD
public:
  TrackEncoder() {    
    rep = new data_structures::REPRESENTATION({
      {data_structures::PIECE_START, data_structures::TOKEN_DOMAIN(1)},
      {data_structures::BAR, data_structures::TOKEN_DOMAIN(1)},
      {data_structures::BAR_END, data_structures::TOKEN_DOMAIN(1)},
      {data_structures::TRACK, data_structures::TOKEN_DOMAIN({
        midi::STANDARD_TRACK,
        midi::STANDARD_DRUM_TRACK,   
      },data_structures::INT_VALUES_DOMAIN)},
      {data_structures::TRACK_END, data_structures::TOKEN_DOMAIN(1)},
      {data_structures::INSTRUMENT, data_structures::TOKEN_DOMAIN(128)},
      {data_structures::NOTE_OFFSET, data_structures::TOKEN_DOMAIN(128)},
      {data_structures::NOTE_ONSET, data_structures::TOKEN_DOMAIN(128)},
      {data_structures::TIME_DELTA, data_structures::TOKEN_DOMAIN(48)},
      });
    config = get_encoder_config();
  }
  ~TrackEncoder() {
    delete rep;
    delete config;
  }
  data_structures::EncoderConfig *get_encoder_config() {
    data_structures::EncoderConfig *encoder_config = new data_structures::EncoderConfig();
    encoder_config->force_instrument = true;
    encoder_config->min_tracks = 1; // not sure this is used anywhere
    encoder_config->resolution = 12;
    return encoder_config;
  }
};

}
// END OF NAMESPACE






