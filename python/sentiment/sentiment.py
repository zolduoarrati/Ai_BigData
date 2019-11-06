import nltk
import re
import pandas as pd
from nltk.sentiment.vader import SentimentIntensityAnal

stats = pd.read_csv('testing.csv',encoding='cp1252')
sid = SentimentIntensityAnalyzer()

#removing urls from each string. Make sure the database ONLY has one column called 'review'
stats['review'] = stats['review'].apply(lambda x: re.split('https:\/\/.*', str(x))[0])
stats['review'] = stats['review'].map(lambda x: x.replace('?',''))
stats['review'] = stats['review'].map(lambda x: x.replace('(',''))
stats['review'] = stats['review'].map(lambda x: x.replace(')',''))
stats['review'] = stats['review'].map(lambda x: x.replace('!',''))
stats['review'] = stats['review'].map(lambda x: x.replace('.',''))
stats['review'] = stats['review'].map(lambda x: x.replace("\\",''))
stats['review'] = stats['review'].map(lambda x: x.replace('/',''))
stats['review'] = stats['review'].map(lambda x: x.replace('`',''))
stats['review'] = stats['review'].map(lambda x: x.replace("'",''))
stats['review'] = stats['review'].map(lambda x: x.replace(':',''))
stats['review'] = stats['review'].map(lambda x: x.replace('[',''))
stats['review'] = stats['review'].map(lambda x: x.replace(']',''))

#calculate sentiment based on nltk library. Make sure the database ONLY has one column called 'review'
for i in range(0,len(stats)):
    cell = stats.iat[i,0]
    print('#########################################\n')
    print('Original sentence:',cell)
    tokens = nltk.word_tokenize(cell)
    
    for token in tokens:
        print(token)
        ss = sid.polarity_scores(token)
        
        for k in sorted(ss):
            print('{0}: {1}, '.format(k, ss[k]), end='')
         
            print()
    