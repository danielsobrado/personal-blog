---
description: "Distributions a laws governing these are a must know for every data scientist."
author: "Daniel Sobrado"
date: 2014-02-08
linktitle: Probability distributions
nomenu:
  main:
    parent: tutorials
prev: /tutorials/mathjax
next: /prior-posterior-probabilities
title: Probability distributions
noweight: 10
image: https://i.imgur.com/WLrOv2Q.png
tags : [
    "probability"
]
categories : [
    "Maths"
]
---

# Introduction

Distributions a laws governing these are a must know for every data scientist.

# The law of large numbers

The law of large numbers states that the more samples we collect the more close the sample mean will be to the population mean.

# Central Limit Theorem

>  The sampling distribution of the mean of any independent, random variable will be normal or nearly normal, if the sample size is large enough.

We can say that 30 samples is a size good enough to consider it large enough, this theorem tells us that if we collect **random** samples from any distribution we'll finish with a Normal distribution in our sample dataset.

The underlying distribution needs to have always a defined mean for the Central Limit Theorem to be valid.

# Normal

# Binomial

This a discrete distribution, that models problems like tossing a coin and getting binary outcomes like heads and tails, True or False, Good or Bad...

Our binomial distribution looks like:

<div id="el"><span>$$P ( x ) = \left( \begin{array} { l } { n } \\ { x } \end{array} \right) p ^ { x } q ^ { n - x } = \frac { n ! } { ( n - x ) ! x ! } p ^ { x } q ^ { n - x }</span></div>

* n = number of events
* x = number of successes
* p = probability of getting a success in one event.
* q = (1-p) or the probability of getting a failure.
* There are only two possible outcomes at each trial.
* These events are independent.
* The events happen at a constant rate.

# Bernoulli

# Poisson

> The Poisson distribution is useful to model the number of times an event occurs in an interval of time or space.

* k is a positive integer that represents the number of times that an event occurs in an interval.
* These events are independent.
* The events happen at a constant rate.
