# -*- coding: utf-8 -*-
"""
Created on Fri Jan  4 12:14:15 2019

@author: Navid.Bahmanyar
"""

import numpy as np

y = [96, 104, 103, 103, 99, 98, 103, 100, 100, 102]
b0 = 83.39; b1 = 0.17

predict1 = []
predict2 = []
for i in range(9):
    if i == 0:
        predict1.append(b0 + b1*y[i])
        predict2.append(b0 + b1*y[i])
    else:
        predict1.append(b0 + b1*predict1[-1])
        predict2.append(b0 + b1*y[i])
        
y = np.array(y).round(2)
predict = np.array(predict2).round(3)

err = y[1:] - predict
err_mean = err.mean()

MSE = sum( (err - err_mean)**2 / (len(y) - 3) )

print(MSE)