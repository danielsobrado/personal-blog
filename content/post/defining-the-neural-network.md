---
description: "."
author: "Daniel Sobrado"
date: 2014-12-26
linktitle: Forward propagation in a Neural Network
next: /tutorials/GitHub-pages-blog
prev: /tutorials/automated-deployments
title: "Forward propagation in a Neural Network"
weight: 10
image: https://i.imgur.com/IN7F48v.png
tags : [
    "Deep Learning"
]
categories : [
    "Data-Science"
]
draft: true
---

## Concepts

When we count layers without taking into account the input payer.

Logistic Regression is a one layer neural network.

## Notation

L = Number of layers.

x<sub>[l]</sub> = Input features.

n<sup>[l]</sup> = Number of units in the lager l. 

a<sup>[l]</sup> = Activation in layer l.

a<sup>[l]</sup> = g<sup>[l]</sup> (z<sup>[l]</sup>).

w<sup>[l]</sup> = Weight for z<sup>[l]</sup>.

b<sup>[l]</sup> = Bia for z<sup>[l]</sup>.

$ y_hat $ = Predicted values.

In this case n<sup>[0]</sup> = 2, 

## Forward Propagation

x: z<sup>[l]</sup> = w<sup>[l]</sup> + b<sup>[l]</sup>

a<sup>[l]</sup> = g