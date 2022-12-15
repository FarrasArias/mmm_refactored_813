[![N|Solid](https://drive.google.com/uc?export=view&id=1u4xiWN3s0PAii8zn3-qxJ7wn35tBOypY)](https://metacreation.net/category/projects/)

# MMM API Docs

**Table of contents**
- Linux mmm_api Installation
- Compute Canada mmm_api Installation
- mmm_refactored
- How encoders work

## Linux mmm_api Installation
1. First, make sure to clone the MMM_API_refactored in your machine.

2. Make sure you have protobuf installed in your machine. The current version of MMM uses 3.12.4.

3. This version of the code is missing Torch, Pybind11 and MidiFile in the files, make sure to include them in your folders.
[here](https://download.pytorch.org/libtorch/cpu/libtorch-cxx11-abi-shared-with-deps-1.12.1%2Bcpu.zip) is the Torch version the system currently supports.
[here](https://github.com/pybind/pybind11) is the Pybind11 folder. [here](https://github.com/craigsapp/midifile) is the Midi File repo.

> **Note:** unzip the Torch .zip and copy the libtorch folder in mmm_refactored/libraries (replace the current empty libtorch folder). Likewise, replace the empty Pybind11 folder for the one downloaded from github. Do the same for the midifile repo.

4. That's pretty much it! Run the library creation folder to create the python library on your machine. For now, the library is created as an SO file in the python_lib folder. Make sure you copy the library into the folders of your python project!
```sh
bash create_python_library.sh
```

## Compute Canada mmm_api Installation
1. We need to load protobuf first, and for that we need to load the StdEnv module:
```sh
module load StdEnv/2020
module load protobuf/3.12.3
```
2. After that, follow the same steps as the normal Linux mmm_api_installation (skip step 2, since we already loaded protobuf)

And that's it!

> **Note:** The original MMM_API has more features as of right now, but it is unable to link to Torch on Compute Canada. This version will include all those features eventually, we're working hard on that!

## mmm_refactored 
The mmm is divided into 3 blocks:
1. Dataset Module (currently implemented)
2. Training Module
3. Inference Module

### Dataset Module
In order to train a new model, you must first build a dataset. You can upload the files you need using Globus (check the CC [guide]()). To check an example of the structure of the folders in your dataset, you can check the DDD_split.zip file in the shared folder (projects/def-pasquier). 
> **Note**: Remember that to copy from the shared folder to your own folders you must use absolute paths.

Once you have the folder with the data, run the following command
```sh
python3 python_scripts/build_dataset.py --data_dir /path_to_dataset/DATASET_NAME --output /path_to_output/data.arr --nthreads 40 
```




