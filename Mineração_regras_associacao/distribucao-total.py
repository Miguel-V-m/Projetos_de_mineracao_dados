#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Apr  8 10:10:44 2022

@author: miguel
"""

import matplotlib.pyplot as plt
from numpy import genfromtxt

dados = genfromtxt('valor_total.csv')
#istograma = plt.hist(dados, bins="sturges")
#histograma = plt.hist(dados, bins="scott")
#histograma = plt.hist(dados, bins="fd")
#histograma = plt.hist(dados, bins=5)
histograma = plt.hist(dados)