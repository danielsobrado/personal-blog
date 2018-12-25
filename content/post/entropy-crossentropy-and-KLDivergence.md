---
description: "In Information Theory receiving a bit reduces our uncertainty by half, or a factor of 2. "
author: "Daniel Sobrado"
date: 2014-05-20
linktitle: Entropy, Cross-Entropy and KL-Divergence
nomenu:
  main:
    parent: tutorials
prev: /tutorials/mathjax
next: /prior-posterior-probabilities
title: Entropy, Cross-Entropy and Kullback-Leibler Divergence
noweight: 10
image: https://i.imgur.com/MGDmDqr.png
tags : [
    "kl-divergence"
]
categories : [
    "Maths"
]
---

# Information theory

A bit is a number that is equal to 0 or 1. In [Information theory](https://en.wikipedia.org/wiki/Information_theory), receiving a bit reduces our uncertainty by half, or a factor of 2.

If our clients in the bank are likely to repay a loan or not, and we have our risk manager to tell us if a certain client repaid or not his loan, if the chance of the client being good or bad is 50%, our risk manager is reducing our uncertainty about the client by a factor of 2.

Now let's suppose that the risk manager can give us a score of the client from 1 to 8, ranking how much the client did repay, from nothing to everything, and these are equally likely.

When we get the report from the risk manager he is dividing our uncertainty by a factor of 8, that is 2<sup>3</sup>, he can send us 3 bits to communicate this.

He might send a larger text messages with many bits explaining the ranking with a label, but the real information we receive that reduces our uncertainty is 3 bits long. 

# Entropy

Entropy equation:
$$
H\left( p \right) = - \sum _ { i = 1 } ^ { n } p _ { i } \cdot \log _ { 2 \left( p _ { i } \right) }
$$
Let's do an example in Python:



```python
from` `scipy ``import` `stats
print` `stats.entropy(pk``=``[``0.2``, ``0.8``], qk``=``[``0.4``, ``0.6``])
```