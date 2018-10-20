---
description: "Probability is a fundamental domain of data science, having sound foundations on this topic will help us climb the ladder to master Bayesian inference and other machine learning methods that have their roots in probability theory. We'll start with essential concepts like an outcome, conditional probability, joint probability etc. "
author: "Daniel Sobrado"
date: 2018-03-10
linktitle: Basic probability concepts
nomenu:
  main:
    parent: tutorials
prev: /tutorials/mathjax
title: Basic probability concepts
noweight: 10
image: https://i.imgur.com/IenFUVF.jpg
tags : [
    "probability"
]
categories : [
    "Maths"
]
---

# Introduction

In this series of articles, We'll dig deep into understanding `Bayesian inference`, starting from the basics.

The main idea behind Bayesian statistics is the Bayes theorem, we need to understand some concepts first.

# Concepts

Let´s illustrate these concepts with poker cards and rolling dices:

* A **probability** is a number between 0 and 1, both included, that describes the degree of confidence that we have in a prediction, 0 is none or false and 1 is all or true.
<div id="el"><span>$$P ( hearts ) = 0.25$$</span></div>
* A **conditional probability** is a probability based on some premise. I know that in my city there is a 5% chance of rain, but given that is autumn the probability raises to 25%, the premise is that it is autumn, this premise gives us additional information that allows us to have a more accurate prediction.
<div id="el"><span>$$P ( a \cap b ) = P ( a ) * P ( b )$$</span></div>

* **Outcome**: Possible result of an `experiment`. Each outcome is unique, and different outcomes are `mutually exclusive`.

> We roll a dice, this is an experiment, we get the number *3* as outcome, this outcome had a prior probability of 1/6. 

#### Prior and Posterior distributions

Let´s suppose that we know all the possible causes for an outcome, for example:

**

# Next 

We'll be using the following python packages:
* [pymc3](https://github.com/pymc-devs/pymc3) 
* [pyro](https://github.com/uber/pyro)
