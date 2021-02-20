---
description: "A neural in a neural network is a Linear Regression by itself, understanding linear regressions and its regularization techniques will help us understanding more advanced models."
author: "Daniel Sobrado"
date: 2016-011-04
linktitle: Linear Regression
next: /tutorials/GitHub-pages-blog
prev: /tutorials/automated-deployments
title: "Linear Regression"
weight: 10
image: https://i.imgur.com/FXrKBsK.png
tags : [
    "Python",
    "Linear Regression"
]
categories : [
    "Data-Science",
    "Maths"
]
type: post
---


# Introduction to Linear Regression

> A linear regression tries to estimate a linear relationship that best fits a given set of data.

We need to understand that Linear Regression won´t help us with non linear relationships.

![](https://imgur.com/sEceQfk)

When we do a regression we are trying to understand the strength and direction of the relationship between two or more variables.

This is different from correlation analysis, because the model allows us to infer on new inputs.

## Types of regressions

Depending on our target variable(s) we can have different types of regressions and approaches:

* **Linear**: We predict a continuous numeric variable. (How much would I weight if...)
* **Logistic**: We predict a categorical variable. (Will I be thin, normal, overweight or obesse, if ...)
* **Poisson**: We predict counts, only positive integer numbers. (how many visits will I make to the doctor?)

In this case we are going to discuss Linear Regression.

<div id="el"><span>$$ y_i = h(\mathbf{x}_i, \mathbf{w}) = \mathbf{w}^T\mathbf{x}_i $$</span></div>

<div id="el"><span>$$ L(\mathbf{w}) = \sum_i \left(h(\mathbf{x}_i, \mathbf{w}) - y_i\right)^2 $$</span></div>

<div id="el"><span>$$ L(\mathbf{w}) $$</span></div>

Concepts:

Simple linear regression: Is a linear model using a single predictor variable.

Dataset: [Economic and employment data.](http://people.sc.fsu.edu/~jburkardt/datasets/regression/x22.txt)


See: https://medium.freecodecamp.org/data-science-with-python-8-ways-to-do-linear-regression-and-measure-their-speed-b5577d75f8b