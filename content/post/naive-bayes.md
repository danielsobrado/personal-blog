---
description: "A probabilistic technique that can be used for classification tasks, a really fast algorithm that can scale well and reply in real-time. Still a 'Naive' approach to solve our problems, given that it considers all features independent of each other..."
author: "Daniel Sobrado"
date: 2014-04-07
linktitle: Naive Bayes
nomenu:
  main:
    parent: tutorials
prev: /tutorials/mathjax
title: Naive Bayes
noweight: 10
image: https://i.imgur.com/8FsWJTc.png
tags : [
    "probability",
    "bayesian"
]
categories : [
    "Maths",
    "Data Science"
]
---

# Introduction

In Bayesian statistics there are two important concepts, we use probabilities to measure the uncertainty about the parameters used by the probability distributions, and we use the Bayes´ theorem to update those probabilities.  

# Naive Bayes

## Types of Naive Bayes Algorithms

### Gaussian Naive Bayes

We assume that each class has continuous Normal/Gaussian distributed values.

<div id="el"><span>$$ P \left( x _ { i } | y \right) = \frac { 1 } { \sqrt { 2 \pi \sigma _ { y } ^ { 2 } } } \exp \left( - \frac { \left( x _ { i } - \mu _ { y } \right) ^ { 2 } } { 2 \sigma _ { y } ^ { 2 } } \right) $$</span></div>

sklearn.naive_bayes.GaussianNB

### MultiNomial Naive Bayes

### Bernoulli Naive Bayes

## Advantages and Disadvantages

### Advantages

### Disadvantages
