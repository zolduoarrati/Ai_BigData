# -*- coding: utf-8 -*-
"""
Created on Wed Oct  9 11:54:44 2019
@author: EZolduoarrati
"""
##os.listdir(r'C:\Users\alamo248\Downloads\test\test1')
import os, sys
for root, dirs, files in os.walk(os.path.dirname(os.path.abspath(__file__))):
    for file in files:
        base_path, ext = os.path.splitext(os.path.join(root, file))

        if not ext:
            os.rename(base_path, base_path + ".csv")
