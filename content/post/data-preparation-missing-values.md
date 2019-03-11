---
description: "Raw data is often in need of a good clean up, needs to pre-processed, cleaned, re-formatted,  combined, enriched, corrected and consolidated. Feeding our models with good quality data is a essential to ensure that we get good results.. Missing values are one of the first things we need to deal with."
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

Missing Values are part of our data cleaning and pre-processing tasks, we are going to face features with missing values and we need to take a decision about what to do with those.

* Ignore the feature if there are too many missing values.
* Drop the rows that are  missing.
* Apply a calculation to fill the, like the mean or the mode, we can do this on a stratified manner.
* Create a new column to reflect that these values are missing.

# Visualizing missing Values

import missingno as msno
msno.matrix(target_DF)

import pandas as pd
census_data.isnull().sum()


https://towardsdatascience.com/working-with-missing-data-in-machine-learning-9c0a430df4ce


df.dropna(subset = ['column1_name', 'column2_name', 'column3_name'])
df.dropna(how='all')

Drop row if it does not have at least ten values that are **not** NaN
df.dropna(thresh=10)

Take only the finite numbers:

df = df[np.isfinite(df['column1_name'])]

pandas notnull is preferred to isfinite:

filtered_df = df[df['column1_name'].notnull()]


# Inputting numerical values

# Inputting categorical values

## Average inputation
## Regression Substitution
## Multiple inputation

https://people.hofstra.edu/Jeffrey_J_Froh/webpage%20update_june%26july08/wayman_multimp_aera2003.pdf
https://measuringu.com/handle-missing-data/
