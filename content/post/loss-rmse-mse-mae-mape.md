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

# MAE
# MAPE
# Mean Squared Error (MSE)

Incorporates both the variance and the bias of the predictor.

# RMSE
# RMSLE

When the differences from predicted and actuals are large the log function helps normalizing this.

log(pi+1)−log(ai+1)

Squared root of variance is the Standard Deviation.

See: https://www.quora.com/What-is-the-difference-between-an-RMSE-and-RMSLE-logarithmic-error-and-does-a-high-RMSE-imply-low-RMSLE
