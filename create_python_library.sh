rm -r ./python_lib
mkdir ./python_lib
rm -r ./libraries/protobuf/build
mkdir ./libraries/protobuf/build
cd ./python_lib
cmake ..
make
python3 -c "import mmm_refactored; print(mmm_refactored.test_function_python(6,6))"
cd ..
cp python_scripts_for_testing/mmmtest3.mid ./python_lib
cp python_scripts_for_testing/pythontest.py ./python_lib
cp python_scripts_for_testing/build_dataset_test.py ./python_lib
cd ./python_lib
python3 pythontest.py
python3 build_dataset_test.py 
