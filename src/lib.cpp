#include <iostream>
#include <string>
#include "../include/dataset_creation/dataset_manipulation/bytes_to_file.h"
#include "../libraries/protobuf/include/proto_library.h"
#include "../libraries/torch/include/torch_library.h"
#include "../libraries/protobuf/build/midi.pb.h"
#include "MidiFile.h"
#include <pybind11/pybind11.h>
#include <pybind11/stl.h>
#include "../src/dataset_creation/data_structures/train_config.h"
#include "../src/dataset_creation/encoder/encoder_v2.h"

namespace py = pybind11;

/*int main()
{
	std::cout << midiio::test() << std::endl;
	std::cout << "Hello mmm_apii" << std::endl;
	mmmProto::testMmmProto();
	mmmTorch::testMmmTorch();
}*/

PYBIND11_MODULE(mmm_refactored, handle) {

	py::class_<data_structures::TrainConfig>(handle, "TrainConfig")
		.def(py::init<>())
		.def_readwrite("num_bars", &data_structures::TrainConfig::num_bars)
		.def_readwrite("min_tracks", &data_structures::TrainConfig::min_tracks)
		.def_readwrite("max_tracks", &data_structures::TrainConfig::max_tracks)
		.def_readwrite("max_mask_percentage", &data_structures::TrainConfig::max_mask_percentage)
		.def_readwrite("opz", &data_structures::TrainConfig::opz)
		.def_readwrite("no_max_length", &data_structures::TrainConfig::no_max_length)
		.def("to_json", &data_structures::TrainConfig::ToJson)
		.def("from_json", &data_structures::TrainConfig::FromJson);

	//dataset_manipulation folder definitions
	py::class_<dataset_manipulation::BytesToFile>(handle, "BytesToFile")
		.def(py::init<std::string&>())
		.def("append_bytes_to_file_stream", &dataset_manipulation::BytesToFile::appendBytesToFileStream)
		.def("write_file", &dataset_manipulation::BytesToFile::writeFile)
		.def("close", &dataset_manipulation::BytesToFile::close);

	py::class_<encoder::TrackEncoder>(handle, "TrackEncoder")
		.def(py::init<>())
		.def("midi_to_json_bytes", &encoder::TrackEncoder::midi_to_json_bytes)
		.def_readwrite("config", &encoder::TrackEncoder::config)
		.def_readwrite("rep", &encoder::TrackEncoder::rep);

}