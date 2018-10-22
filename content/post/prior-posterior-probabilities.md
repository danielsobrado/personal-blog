---
description: "The prior probability distribution, is ones beliefs about its quantity before some evidence is taken into account.

The posterior probability distribution, is the revised probability of an event occurring after some evidence has been taken into account."
author: "Daniel Sobrado"
date: 2014-03-15
linktitle: Prior and Posterior distributions
prev: /basic-probability-concepts
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

# Introduction

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

# Next 

We'll be using the following python packages:
* [pymc3](https://github.com/pymc-devs/pymc3) 
* [pyro](https://github.com/uber/pyro)
