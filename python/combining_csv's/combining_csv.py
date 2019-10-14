# -*- coding: utf-8 -*-
"""
Created on Wed Oct  9 11:54:44 2019
@author: EZolduoarrati
"""
import os
import glob
import pandas as pd
#os.chdir("/mydir")
extension = 'csv'
all_filenames = [i for i in glob.glob('*.{}'.format(extension))]
#combine all files in the list
combined_csv = pd.concat([pd.read_csv(f,low_memory=False) for f in all_filenames ])
#export to csv
combined_csv.to_csv( "commits-5.csv", index=False, encoding='utf-8-sig')



