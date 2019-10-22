## -*- coding: utf-8 -*-
#"""
#Created on Wed Oct  9 11:54:44 2019
#@author: EZolduoarrati
#"""
#import pandas as pd
import codecs
output = codecs.open("usa_output.txt", encoding = 'utf-8', mode='w+')
# Open file    
fileHandler = codecs.open ("usa_1.txt", encoding = 'utf-8', mode = 'r')
# Get list of all lines in file
listOfLines = fileHandler.readlines()
# Iterate over the lines
for line in listOfLines:
    k = 'Location ='+"'"+line.strip()+"' or"+"\n"
    output.write(k) 
# Close files 
fileHandler.close()
output.close()

#fileHandler = open ("Russia_Updated.txt", "r")
## Get list of all lines in file
#listOfLines = fileHandler.readlines()
## Iterate over the lines
#for line in listOfLines:
##    print (line.strip())
#    s = line.strip()
#    k = 0
#    for line in listOfLines:
#        if line.strip() == s:
#            k += 1
#            if k >= 2:
#                line.tru
##    k = 'Location ='+"'"+line.strip()+"' or"+"\n"
##    output.write(k) 
## Close file 
#fileHandler.close()

#with open("Russia_Updated.txt") as result:
#        uniqlines = set(result.readlines())
#        with open("Russia_Updated_output.txt", 'w') as rmdup:
#            rmdup.writelines(set(uniqlines))

#lines_seen = set() # holds lines already seen
#outfile = open("CN_output.txt", "w")
#for line in open("CN.txt", "r"):
#    if line not in lines_seen: # not a duplicate
#        outfile.write(line)
#        lines_seen.add(line)
#outfile.close()