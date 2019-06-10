#!/usr/bin/python3
 
# import shutil & os
import shutil,os

print("coping bin file...");

# copy the .bin file------->absoulte directory
# shutil.copy("C:\\Users\\yf22\\Desktop\\LHD8006_application\\Project\\RVMDK\\Output\\LHD8006_application.bin","C:\\Users\\yf22\\Desktop\\T1-3")

# copy the .bin file------->relative directory
shutil.copy(os.path.abspath(os.path.dirname(os.path.dirname(__file__)))+"\\Project\\RVMDK\\Output\\LHD8006_application.bin",os.path.abspath(os.path.dirname(__file__)))

print("copy done!");

# add "python ./../../../copy_bin.py" to MDK_keil
