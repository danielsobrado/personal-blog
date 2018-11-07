---
description: "Raw data is often in need of a good clean up, needs to pre-processed, cleaned, re-formatted,  combined, enriched, corrected and consolidated. Feeding our models with good quality data is a essential to ensure that we get good results.."
author: "Daniel Sobrado"
date: 2014-12-27
linktitle: Missing Records in Data Preparation
next: /tutorials/GitHub-pages-blog
prev: /tutorials/automated-deployments
title: "Data Preparation: Missing Records"
weight: 10
image: https://i.imgur.com/aRz1ymI.png
tags : [
    "Data Preparation",
    "Python"
]
categories : [
    "Data-Science"
]
draft: true
---


# Visualizing missing Values

import missingno as msno
msno.matrix(census_data)

import pandas as pd
census_data.isnull().sum()


https://towardsdatascience.com/working-with-missing-data-in-machine-learning-9c0a430df4ce


df.dropna(subset = ['column1_name', 'column2_name', 'column3_name'])
df.dropna(how='all')

Drop row if it does not have at least ten values that are **not** NaN
df.dropna(thresh=10)

Take

df = df[np.isfinite(df['column1_name'])]

filtered_df = df[df['EPS'].notnull()]


# Inputting numerical values

# Inputting categorical values

## Average inputation
## Regression Substitution
## Multiple inputation
https://measuringu.com/handle-missing-data/