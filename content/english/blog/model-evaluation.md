---
description: "We need to test how well our model performs with data it has never seen before, to do this we can use multiple strategies depending on the amount of data we have, and the type of problem we are facing, we won´t approach on the same way, image recognition and structured time series problems."
author: "Daniel Sobrado"
date: 2014-12-29
linktitle: Model evaluation
next: /tutorials/GitHub-pages-blog
prev: /tutorials/automated-deployments
title: "Model evaluation"
weight: 10
image: https://i.imgur.com/iOMQB1V.png
tags : [
    "Modelling"
]
categories : [
    "Data-Science"
]
type: post
draft: true
---

# Introduction to Model Evaluation

We need to test how well our model performs with data it has never seen before, to do this we can use multiple strategies depending on the amount of data we have, and the type of problem we are facing, we won´t approach on the same way, image recognition and structured time series problems.  

We want our training and test sets to be equally representative of the true data distributions, to do this we need to understand if the data is **ordered**, for example, we might be trying to learn how to differentiate digits and our data could be ordered, if we just split the data, we might find that we have the first 8 numbers in the training set and the last 2 in the training set, that will be a big mistake, to avoid that we can suffle the data, using `np.random.shuffle(data)`.

When we are dealing with **time series**, we have the opposite problem, if we shuffle the data we might have in our training data information from the future, that we shouldn´t know, this is a type of *data leakage*. to prevent this we make sure that the data is ordered by date and time, and that we only use data from the future in our test and validation sets.

**Repeated data points** can be another issue, our data is not always clean and perfect, if we have repeated data points and they appear in the train and test datasets we´ll also have *data leakage*.

# Validation set

If we train in a datasret only we have the risk of over-fitting our model, memorizing versus generalizing, to avoid this we use a validation set that we never use for testing.

The first step is to train on the training dataset and validate on the validation dataset.

# Test set

Different models have multiple parameters to tune, this means that we need to train and test multiple times to find the best parameters for our use case, the issue we have is that we could overfit against the validation dataset after multiple parameter tuning iterations.

To mitigate this risk, we create another test set to test the final model and make sure that there is no overfitting.

![](https://i.imgur.com/GEujj1s.png)

##### What happens when your test set says that you are overfitting against your validation set?

Simple, you need to find more data, if not you´ll be risking overfitting against the test set.

# K-fold validation

A common techinique to improve the validation results is to use cross-validation, we divide the dataset in multiple parts, we can say 5 parts with 20% of the data in each part and we use these part as validation and test blocks each time, finally we compute the average metric.

This technique is specially useful when we have little data and we cannot afford to spend too much data in the test and validation datasets.

## K-fold validation with shuffling

Shuffling the data after each K-fold partition is speacially useful when you have little data, and allows us to get many more datasets for testing and validation.

We need to take into consideration that shuffling and cross-validation can be expensive operations in terms of processing.

We can use `KFold` from *scikit-learn* with `shuffle` as true:
```
from sklearn.cross_validation import KFold
kfold = KFold(4, n_folds=2, shuffle = True)
```

We can also look at: `sklearn.model_selection.ShuffleSplit` in *scikit-learn*.

## Stratified K-fold validation

When calculating the amount of data that we are going to put in each of our datasets, we need to remember that we want to have relevant information, if we have customers from 20 different countries and we consider that the country is an important feature, we might want to make sure that in all our datasets we have enough data from each country to have a relevant significance for each country. 

See: `sklearn.model_selection.StratifiedShuffleSplit` in *scikit-learn*.