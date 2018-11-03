---
description: "In the case of regression problems one common loss function is RMSE, this isn´t a good choice for classification use cases... MSE is arguaby the most common loss fuction for regression problems. Lets understand the differences..."
author: "Daniel Sobrado"
date: 2016-07-23
linktitle: "Loss functions: MAE, MAPE, MSE, RMSE and RMSLE"
next: /tutorials/GitHub-pages-blog
prev: /tutorials/automated-deployments
title: "Loss functions: MAE, MAPE, MSE, RMSE and RMSLE"
weight: 10
image: https://i.imgur.com/isyQF4V.jpg
tags : [
    "Loss Functions"
]
categories : [
    "Data-Science"
]
---


# Loss Functions

The loss function calculates the difference between the output of your model and the "Ground Truth" or actual values.

There are multiple loss functions for regression and classification pourposes:

All this functiones measure the ratio between actual/reference and predicted, the differences are in how the outliersd impact the final outcome.

# Mean Absolute Error (MAE)

Measures average/mean squared error of our predictions.

<div id="el"><span>$$ MAE = \frac{1}{n} \sum1^n |yi - \hat{y}_i| $$</span></div>

Gives less weight to the outliers.

# Mean Absolute Percentage Error (MAPE)

<div id="el"><span>$$ MAPE = \frac{100}{n} \sumi^n \frac{yi - \hat{y}i}{yi} $$</span></div>

# Mean Squared Error (MSE)

Incorporates both the variance and the bias of the predictor.

<div id="el"><span>$$ MSE = $$</span></div>

# Root Mean Square Error (RMSE)

<div id="el"><span>$$ RMSLE = \sqrt{\Sigma_{i=1}^{n}{\frac{(\hat{y_i} - y_i)^2}{n}}}$$</span></div>

By Squaring the errors we can get more accurate results as the negative and positive errors don't cancel each other.

# Root Mean Square Logarithmic Error (RMSLE)

> RMSLE penalizes an under-predicted estimate greater than an over-predicted estimate.

<div id="el"><span>$$ RMSLE = $$</span></div>

When the differences from predicted and actuals are large the log function helps normalizing this.

By applying logarithms to both prediction and actual numbers, we'll get smoother results by reducing the impact of larger x, while emphasize of smaller x.

RMSLE measures the ratio between actual and predicted.

<div id="el"><span>$$ log(pi+1)−log(ai+1) $$</span></div>

![](https://i.imgur.com/1d5fJZR.png)

There is a larger delta of y correspoding to an equivalent delta of x when x is small.

Note: Squared root of variance is the Standard Deviation.

See: https://www.quora.com/What-is-the-difference-between-an-RMSE-and-RMSLE-logarithmic-error-and-does-a-high-RMSE-imply-low-RMSLE
