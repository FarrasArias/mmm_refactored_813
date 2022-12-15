cmake_minimum_required(VERSION 3.8)

SET(CMAKE_CXX_STANDARD 20)
SET(CMAKE_CXX_STANDARD_REQUIRED ON)
SET(CMAKE_POSITION_INDEPENDENT_CODE ON)
#we add the following line to fix a linkage issue between torch and midifile
#https://stackoverflow.com/questions/68922557/c-linker-error-undefined-reference-when-linking-package-libtorch-and-shared
#add_compile_definitions(_GLIBCXX_USE_CXX11_ABI=0)

project(mmm_refactored) #TODO: Change to final name

#Find the necessary packages to be able to link the libraries correctly
include_directories(${Protobuf_INCLUDE_DIRS})
find_package(Protobuf REQUIRED)
set(CMAKE_PREFIX_PATH "${CMAKE_CURRENT_SOURCE_DIR}/libraries/libtorch/")
find_package(Torch REQUIRED)

#This is necessary to avoid a symbol linkage error https://github.com/pytorch/pytorch/issues/38122 
# https://github.com/DeepVAC/libdeepvac/blob/master/python/CMakeLists.txt
find_library(TORCH_PYTHON_LIBRARY torch_python PATHS "${TORCH_INSTALL_PREFIX}/lib")

#Add the directories of libraries so the project can CMake them too
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/libraries/protobuf ${CMAKE_CURRENT_SOURCE_DIR}/libraries/protobuf/build)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/libraries/torch ${CMAKE_CURRENT_SOURCE_DIR}/libraries/torch/build)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/libraries/pybind11)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/libraries/midifile)

#https://stackoverflow.com/questions/8934295/add-source-in-a-subdirectory-to-a-cmake-project/54285898#54285898 
#https://crascit.com/2016/01/31/enhanced-source-file-handling-with-target_sources/

set(SRCS
	src/dataset_creation/data_structures/train_config.cpp
	src/dataset_creation/compression/lz4.c
	src/dataset_creation/dataset_manipulation/bytes_to_file.cpp
	#src/midi_io.cpp
	src/dataset_creation/encoder/encoder_v2.h
	src/lib.cpp
	)

#add_executable(mmm_refactored
#	${SRCS})
PYBIND11_ADD_MODULE(mmm_refactored
	${SRCS})

#Adding include folders of libraries to our target so we can reference them with #include
#Add subdirectory adds those to main project so they can be CMAKEd. Include dirs allows us to reference functions in main.
target_include_directories(mmm_refactored PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/libraries/protobuf/include)
target_include_directories(mmm_refactored PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/libraries/torch/include)
target_include_directories(mmm_refactored PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/libraries/midifile/include)

#Linking all the libraries
target_link_libraries(mmm_refactored PRIVATE mmm_proto) #Our protobuf custom library
target_link_libraries(mmm_refactored PRIVATE mmm_torch) #Our torch custom library
target_link_libraries(mmm_refactored PRIVATE midifile)
#This is necessary to avoid a symbol linkage error https://github.com/pytorch/pytorch/issues/38122 
target_link_libraries(mmm_refactored PRIVATE "${TORCH_LIBRARIES}" ${TORCH_PYTHON_LIBRARY})