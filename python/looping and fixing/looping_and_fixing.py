# -*- coding: utf-8 -*-
"""
Created on Wed Oct  9 11:54:44 2019
@author: EZolduoarrati
"""
import pandas as pd

# importing dataset
dataset = pd.read_csv('testing.csv')
output = open("testing_output.txt",'w+')

#iterating through pandas
for index, row in dataset.iterrows():
    if row['total_commits'] >= 400 and row['total_commits'] < 450:
        k = 'or name='+"'"+ repr(row['name'])+"'"+"\n"
        output.write(k)
output.close()        