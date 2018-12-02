---
description: "The prior probability distribution, is ones beliefs about its quantity before some evidence is taken into account. The posterior probability distribution, is the revised probability of an event occurring after some evidence has been taken into account."
author: "Daniel Sobrado"
date: 2014-03-15
linktitle: Prior and Posterior distributions
prev: /basic-probability-concepts
next: /naive-bayes
title: Prior and Posterior distributions
noweight: 10
image: https://i.imgur.com/5O23Ebp.jpg
tags : [
    "probability",
    "bayesian"
]
categories : [
    "Maths"
]
---

Let´s suppose that we know all the possible causes for an outcome, for example:

**

# Bayes theorem

Posterior = ( Likelihood * Prior ) /  Evidence

Here, P(movie|Sci-fi) is called Posterior,
P(Sci-fi|Movie) is Likelihood,
P(movie) is Prior,
P(Sci-fi) is Evidence. 

Prior: How probable was our hypothesis before observing the evidence?
Posterior: How probable is our hypothesis given the observed evidence?
Evidence: How probable is the new evidence under all possible hypotheses?
Likelihood: How probable is the evidence give that our hypotheses is true?

<div id="el"><span>$$P ( A | B ) = \frac { P ( B | A ) P ( A ) } { P ( B ) }$$</span></div>

We know that in pur favourite TV channel they show 40% of the times drama movies, 50% action and 10% horror movies, we´d like to know the probability that tonight there will be an horror movie P(A = Horror) = 0.1, this is our prior probability.

We check the Calendar and today is Hallowing´s night, in Hallowing the channels in general they show horror movies at least 75% of them P()

# Distributions

Discrete: They have only values based on a list of possible values, like the day of the month, number of persons...
Continuous: They take arbitrarily exact values, for example prices, weights, distances...
Mixed: A Combination of both categories.

# Mass and Density Functions

Discrete distributions have probability mass functions while contonuous distributions have probability density functions.

## Probability Mass Function

## Probability Density Function

# Next 

We'll be using the following python packages:
* [pymc3](https://github.com/pymc-devs/pymc3) 
* [pyro](https://github.com/uber/pyro)
