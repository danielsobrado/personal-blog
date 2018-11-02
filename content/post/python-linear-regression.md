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
---


# Introduction to Linear Regression

> A linear regression tries to estimate a linear relationship that best fits a given set of data.

We need to understand that Linear Regression won´t help us with non linear relationships.

![](https://imgur.com/sEceQfk)

<div id="el"><span>$$ y_i = h(\mathbf{x}_i, \mathbf{w}) = \mathbf{w}^T\mathbf{x}_i $$</span></div>

<div id="el"><span>$$ L(\mathbf{w}) = \sum_i \left(h(\mathbf{x}_i, \mathbf{w}) - y_i\right)^2 $$</span></div>

<div id="el"><span>$$ L(\mathbf{w}) $$</span></div>

Concepts:

Simple linear regression: Is a linear model using a single predictor variable.

Dataset: [Economic and employment data.](http://people.sc.fsu.edu/~jburkardt/datasets/regression/x22.txt)


