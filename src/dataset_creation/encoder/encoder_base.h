#pragma once

#include <pybind11/pybind11.h>
#include <pybind11/stl.h>
#include <pybind11/numpy.h>
namespace py = pybind11;

#include "../data_structures/representation.h"
#include "../../../libraries/protobuf/build/midi.pb.h"
#include "../data_structures/train_config.h"
//#include "../../../include/structs/train_config.h"
#include "../data_structures/encoder_config.h"
#include "../midi_parsing/midi_io.h"

// START OF NAMESPACE
namespace encoder_base {



class ENCODER {
public:

  virtual data_structures::REPRESENTATION *get_encoder_rep() {
    throw std::runtime_error("ENCODER CLASS MUST DEFINE get_encoder_rep()");
  }

  virtual data_structures::EncoderConfig *get_encoder_config() {
    throw std::runtime_error("ENCODER CLASS MUST DEFINE get_encoder_config()");
  }

  py::bytes midi_to_json_bytes(std::string &filepath, data_structures::TrainConfig *train_config, std::string &genre_data) { //IDGOOD
    std::string byte_string;
    midi::Piece midi_piece;
    midi_io::ParseSong(filepath, &midi_piece, config);
    util_protobuf::UpdateValidSegments(&midi_piece, train_config->num_bars, train_config->min_tracks, config->te);
    if (!midi_piece.internal_valid_segments_size()) {
      return py::bytes(byte_string); // empty bytes
    }
    // insert genre data in here
    midi::GenreData g;
    google::protobuf::util::JsonStringToMessage(genre_data.c_str(), &g);
    midi::GenreData *gd = midi_piece.add_internal_genre_data();
    gd->CopyFrom(g);
    // insert genre data in here
    midi_piece.SerializeToString(&byte_string);
    return py::bytes(byte_string);
  }
  //#endif
  
  data_structures::EncoderConfig *config;
  data_structures::REPRESENTATION *rep;
};

}
// END OF NAMESPACE