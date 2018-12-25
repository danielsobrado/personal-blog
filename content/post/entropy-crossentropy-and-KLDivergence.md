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
    "entropy",
    "cross-entropy",
    "kl-divergence"
categories : [
    "Maths"
]
---

# Information theory

A bit is a number that is equal to 0 or 1. In [Information theory](https://en.wikipedia.org/wiki/Information_theory), receiving a bit reduces our uncertainty by half, or a factor of 2.

If our clients in the bank are likely to repay a loan or not, and we have our risk manager to tell us if a certain client repaid or not his loan, if the chance of the client being good or bad is 50%, our risk manager is reducing our uncertainty about the client by a factor of 2.

# Entropy

Now let's suppose that the risk manager can give us a score of the client from 1 to 8, ranking how much the client did repay, from nothing to everything, and these are equally likely.

When we get the report from the risk manager he is dividing our uncertainty by a factor of 8, that is 2<sup>3</sup>, he can send us 3 bits to communicate this.

He might send a larger text messages with many bits explaining the ranking with a label, but the real information we receive that reduces our uncertainty is 3 bits long. 

In this case we have a *uncertainty reduction factor* of 8 and we'll be able to compute the number of bits required to transmit this information using the logarithm: log<sub>2</sub>(8) = 3

In real life the possibilities are not always equal, let´s say that we have a 95% chance of having a good customer and 5% to have a bad one that doesn't repay the loan.

> Our uncertainty reduction is the inverse of the probability of the event occurring.

In this the number of bits we need to transmit this information case it's log<sub>2</sub>(1/0.05)=4.322, we need at least 4.322 bits to communicate that the client is not repaying the loan.

We know from the properties of logarithms, that log<sub>2</sub>(1/0.05) is the same as -log<sub>2</sub>(0.05).

If the risk mangers tells us that the client is a good client, our uncertainty doesn't drop that much -log(0.95)=-0.074.

On average a Risk Manager is going to provide on 95% of the cases 0.074 bits of information and in 5% of the cases 4.322 bits of information, in total: 0.95 * 0.074 + 0.05 * 4.322 = 0.2864

We've just measured how uncertain the events are, to do that we've used the **Entropy equation**:
$$
H\left( p \right) = - \sum _ { i = 1 } ^ { n } p _ { i } \cdot \log _ { 2 \left( p _ { i } \right) }
$$
Let's do an example in Python:



```python
from` `scipy ``import` `stats
print` `stats.entropy(pk``=``[``0.2``, ``0.8``], qk``=``[``0.4``, ``0.6``])
```