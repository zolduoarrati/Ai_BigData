# -*- coding: utf-8 -*-
"""
Created on Thu Oct  3 17:12:06 2019
@author: EZolduoarrati
"""
# importing libraries
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

# importing dataset
dataset = pd.read_csv('Data.csv')
X = dataset.iloc[:,:-1].values
y = dataset.iloc[:,3].values

# Managing missing values
from sklearn.preprocessing import Imputer
# Call the Imputer class to check through the file 
# Find the mean and replace it with the mean
imputer = Imputer(missing_values = 'NaN', strategy = 'mean', axis = 0)
# fit what columns you want to be checked
imputer = imputer.fit(X[:, 1:3])
# choose and transform the columns
X[:, 1:3] = imputer.transform(X[:, 1:3])