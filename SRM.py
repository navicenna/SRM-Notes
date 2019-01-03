# -*- coding: utf-8 -*-
"""
Created on Thu Jan  3 10:05:32 2019

@author: Navid.Bahmanyar
"""

starting_value = 96

def AR(y):
    return .17*y + 83.39

l = []
for i in range(9):
    if i == 0:
        l.append(AR(starting_value))
    else:
        l.append(AR(l[-1]))
        
ycompare = [104,103,103,99,98,103,100,100,102]
import pandas as pd, seaborn as sns
pts = [
       [1, 2],
       [3, 4],
       [4, 3],
       [5, 2],
       [9, 1]
       ]
df = pd.DataFrame(pts, columns=['x', 'y'])
plt = sns.scatterplot(df['x'], df['y'])
cluster=df

def var(cluster):
    centroid = cluster.mean().tolist()
    diffs = cluster - centroid
    diffs = diffs**2
    diffs['dist'] = diffs.apply(sum, axis=1)
    return sum(diffs['dist'])
    