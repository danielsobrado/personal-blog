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

## Introduction

Distributions a laws governing these are a must know for every data scientist.

## The law of large numbers

The law of large numbers states that the more samples we collect the more close the sample mean will be to the population mean.

## Central Limit Theorem

>  The sampling distribution of the mean of any independent, random variable will be normal or nearly normal, if the sample size is large enough.

We can say that 30 samples is a size good enough to consider it large enough, this theorem tells us that if we collect **random** samples from any distribution we'll finish with a Normal distribution in our sample data-set.

The underlying distribution needs to have always a defined mean for the Central Limit Theorem to be valid.

## Normal Distribution

## Binomial Distribution

This a discrete distribution, that models problems like tossing a coin and getting binary outcomes like heads and tails, True or False, Good or Bad...

Our binomial distribution looks like:

$$ P ( x ) = \left( \begin{array} { l } { n } \\ { x } \end{array} \right) p ^ { x } q ^ { n - x } = \frac { n ! } { ( n - x ) ! x ! } p ^ { x } q ^ { n - x } $$

* n = number of events
* x = number of successes
* p = probability of getting a success in one event.
* q = (1-p) or the probability of getting a failure.
* There are only two possible outcomes at each trial.
* These events are independent.
* The events happen at a constant rate.

## Multinomial Distribution

A multinomial distribution is an extension of a binomial distribution where we can have multiple outcomes.

* k is the number of outcomes.
* n is the number of events
* p is a vector of probabilities for each of the events.
* In the multinomial distribution the parameter vector is a Dirichlet distribution, this is the prior distribution for the parameter or conjugate prior.

See: https://towardsdatascience.com/estimating-probabilities-with-bayesian-modeling-in-python-7144be007815
See: https://frnsys.com/ai_notes/machine_learning/bayesian_learning.html

## Dirichlet Distribution



 P ( p | a ) = \frac { \Gamma \left( \sum _ { k = 0 } ^ { K - 1 } \alpha _ { k } \right) } { \prod _ { k = 0 } ^ { K - 1 } \Gamma \left( \alpha _ { k } \right) } \prod _ { k = 0 } ^ { K - 1 } p _ { k } ^ { a _ { k } - 1 } 

$$

* k is the number of outcomes.
* Alpha is a vector is positive real values called the concentration parameter and is used as a hyper-parameter. 
    * Alpha can be a distribution itself, it will be a hyper-prior, and might have hyper-hyper-parameters.
    * We can define alpha as a vector of prior beliefs like alpha=[2,4,1]

## Bernoulli Distribution

## Poisson Distribution

> The Poisson distribution is useful to model the number of times an event occurs in an interval of time or space.

* k is a positive integer that represents the number of times that an event occurs in an interval.
* These events are independent.
* The events happen at a constant rate.

