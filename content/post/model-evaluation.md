---
description: "We need to test how well our model performs with data it has never seen before, to do this we can use multiple strategies depending on the amount of data we have, and the type of problem we are facing, we won´t approach on the same way, image recognition and structured time series problems."
author: "Daniel Sobrado"
date: 2014-12-29
linktitle: Model evaluation
next: /tutorials/GitHub-pages-blog
prev: /tutorials/automated-deployments
title: "Model evaluation"
weight: 10
image: https://i.imgur.com/w99yd6y.jpg
tags : [
    "Models"
]
categories : [
    "Data-Science"
]
draft: true
---

# Introduction to Model Evaluation

We need to test how well our model performs with data it has never seen before, to do this we can use multiple strategies depending on the amount of data we have, and the type of problem we are facing, we won´t approach on the same way, image recognition and structured time series problems.  

We want our training and test sets to be equally representative of the true data distributions, to do this we need to understand if the data is **ordered**, for example, we might be trying to learn how to differentiate digits and our data could be ordered, if we just split the data, we might find that we have the first 8 numbers in the training set and the last 2 in the training set, that will be a big mistake, to avoid that we can suffle the data, using `np.random.shuffle(data)`.

When we are dealing with **time series**, we have the opposite problem, if we shuffle the data we might have in our training data information from the future, that we shouldn´t know, this is a type of *data leakage*. to prevent this we make sure that the data is ordered by date and time, and that we only use data from the future in our test and validation sets.

**Repeated data points** can be another issue, our data is not always clean and perfect, if we have repeated data points and they appear in the train and test datasets we´ll also have *data leakage*.

# Test set

# Validation set

# K-fold validation

## K-fold validation with shuffling

## Stratified K-fold validation