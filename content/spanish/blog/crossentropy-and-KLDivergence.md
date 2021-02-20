---
description: "I our last post we've seen that entropy tells us the minimum number of bits that we need to encode our ground truth distribution.
What if we don't know the correct or ground truth distribution? In real life we have a approximated view of the reality, we cannot observe all events in most cases."
author: "Daniel Sobrado"
date: 2014-06-21
linktitle: Cross-Entropy and Kullback-Leibler Divergence
nomenu:
  main:
    parent: tutorials
prev: /tutorials/mathjax
next: /prior-posterior-probabilities
title: Cross-Entropy and Kullback-Leibler Divergence
noweight: 10
image: https://i.imgur.com/EG7uO7w.png
tags : [
    "cross-entropy",
    "kl-divergence"
]
categories : [
    "Maths"
]
type: post
draft: true
---

# Cross-Entropy

I our last post we've seen that entropy tells us the minimum number of bits that we need to encode our ground truth distribution.

> We cannot encode our *correct* distribution with less information than the entropy.

What if we don't know the correct or ground truth distribution? In real life we have a approximated view of the reality, we cannot observe all events in most cases.

Let´s call $ y $ to the ground truth and $ y_hat $ to our *incorrect* or approximated distribution.

> Cross-Entropy will be always larger than entropy, because we'll be wasting information due to our imperfect distribution.

The Cross-Entropy can only be zero when our approximated distribution is equal to the ground truth distribution, that means $ y = y_hat $.

# Kullback-Leibler Divergence




