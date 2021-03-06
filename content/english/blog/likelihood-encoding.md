---
description: "Likelihood encoding of categorical features"
author: "Daniel Sobrado"
date: 2016-09-12
linktitle: "Likelihood encoding"
next: /tutorials/GitHub-pages-blog
prev: /tutorials/automated-deployments
title: "Likelihood encoding"
weight: 10
image: https://i.imgur.com/MDlo1LF.png
tags : [
    "Loss Functions"
]
categories : [
    "Data-Science"
]
type: post
draft: true
---


# Introduction

Also known as mean encoding, impact encoding or target encoding, it is a technique 

### Mean Absolute Error (MAE)

Measures average/mean squared error of our predictions.

<div id="el"><span>$$ MAE = \frac{1}{n} \sum |yi - \hat{y}_i| $$</span></div>

Gives less weight to the outliers, when you are sure that they are outliers prefer MAE to MSE.

### Mean Absolute Percentage Error (MAPE)

...

<div id="el"><span>$$ MAPE = \frac{100}{n} \sumi^n \frac{yi - \hat{y}i}{yi} $$</span></div>

MAPE is


### Mean Squared Error (MSE)

Incorporates both the variance and the bias of the predictor.

<div id="el"><span>$$ MSE = \frac{1}{n} \sumi^n \frac{yi - \hat{y}i}{yi} $$</span></div>

When you have unexpected values that you should take into account use MSE instead of MAE.

### Root Mean Square Error (RMSE)

RMSE is an **absolute measure** of fit. Lower values of RMSE are indicative of a better fit

> RMSE can be interpreted as the standard deviation of the unexplained variance.

RMSE is in the same units as the predicted variable.

<div id="el"><span>$$ RMSE = \sqrt{\Sigma_{i=1}^{n}{\frac{(\hat{y_i} - y_i)^2}{n}}}$$</span></div>

By squaring the errors we can get more accurate results as the negative and positive errors don't cancel each other.

### Root Mean Square Logarithmic Error (RMSLE)

> RMSLE penalizes an under-predicted estimate greater than an over-predicted estimate.

<div id="el"><span>$$ RMSLE = \sqrt{\Sigma_{i=1}^{n}{\frac{(log(y_i+1)) - (log(\hat{y_i}+1))^2}{n}}}$$</span></div>

When the differences from predicted and actuals are large the log function helps normalizing this.

By applying logarithms to both prediction and actual numbers, we'll get smoother results by reducing the impact of larger x, while emphasize of smaller x.

RMSLE measures the ratio between actual and predicted.

<div id="el"><span>$$ log(pi+1)−log(ai+1) $$</span></div>

![](https://i.imgur.com/1d5fJZR.png)

There is a larger delta of y correspoding to an equivalent delta of x when x is small.

Note: Squared root of variance is the Standard Deviation.

See: https://www.quora.com/What-is-the-difference-between-an-RMSE-and-RMSLE-logarithmic-error-and-does-a-high-RMSE-imply-low-RMSLE
