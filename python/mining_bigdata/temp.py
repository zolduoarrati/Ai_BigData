# -*- coding: utf-8 -*-
"""
Spyder Editor
@author: EZolduoarrati
"""
import pandas as pd
#import re

# importing dataset
dataset = pd.read_csv('testing.csv')
output = open("testing_output.txt",'w+')

#iterating through pandas
for index, row in dataset.iterrows():
    if 'spark' in repr(row['name']):
        k = 'or name='+ repr(row['name'])+"\n"
        output.write(k)
output.close()