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
       [9, 1],
       ]
df = pd.DataFrame(pts, columns=['x', 'y'])
#plt = sns.scatterplot(df['x'], df['y'])
cluster=df

def wc_var(cluster):
    df = pd.DataFrame(cluster, columns=['x', 'y'])
    centroid = df.mean().tolist()
    diffs = df - centroid
    diffs = diffs**2
    diffs['dist'] = diffs.apply(sum, axis=1)
    return sum(diffs['dist'])

def squared_distance(pt_A, pt_B):
    squared_diffs = []
    for i in range(len(pt_A)):
        diff = (pt_A[i] - pt_B[i])**2
        squared_diffs.append(diff)
    return sum(squared_diffs)

def total_wc_squared_distance(cluster):
    total = 0
    for pt1 in cluster:
        for pt2 in cluster:
            total += squared_distance(pt1, pt2)
    return total

def var(cluster):
    wcVariance = wc_var(cluster)
    totalDistance = total_wc_squared_distance(cluster)
    avgDistance = totalDistance / len(cluster)
    print('Within cluster variance is: ', round(wcVariance, 2))
#    print('Total within cluster squared distance: ', totalDistance)
#    print('Average within cluster squared distance: ', avgDistance)
    return wcVariance#, totalDistance, avgDistance

if __name__ =='__main__':
    pts1 = [
           [-1,0],[1,0], [-1,0],[1,0], [-1,0],[1,0], 
            ]
    pts1 = pts
    A = [ (0,-3), (-2,-5), (-3,-5), (-4,-5), (-5,2), ]
    B = [ (0,0), (2,1), (0,4), ]
    C = [ (0,7), (3,6), (7,8), (6,8), (10,10), ]
    Ap = [ (0,-3), (-2,-5), (-3,-5), (-4,-5),]
    Bp = [ (0,0), (2,1), (0,4), (-5, 2)]
    Cp = [ (0,7), (3,6), (7,8), (6,8), ]


#    print(wc_var(pts1))
#    print(squared_distance([0,1], [1, 1]))
    t1 = var(A) + var(B) + var(C)
    print('before total is: ', t1), print()
    t2 = var(Ap) + var(Bp) + var(Cp)
    print('after total is: ', t2)