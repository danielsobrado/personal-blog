---
description: "Probability is a fundamental domain of data science, having sound foundations on this topic will help us climb the ladder to master Bayesian inference and other machine learning methods that have their roots in probability theory. We'll start with essential concepts like an outcome, conditional probability, joint probability etc. "
author: "Daniel Sobrado"
date: 2014-03-10
title: Basic probability concepts
nomenu:
  main:
    parent: tutorials
prev: /tutorials/mathjax
next: /prior-posterior-probabilities
title: Basic probability concepts
noweight: 10
image: https://i.imgur.com/IenFUVF.jpg
tags : [
    "probability",
    "bayesian"
]
categories : [
    "Maths"
]
type: post
---

## Introduction

In this series of articles, We'll dig deep into understanding **Bayesian inference**, starting from the basics.

The main idea behind Bayesian statistics is the Bayes theorem, we need to understand some concepts first.

## TL;DR

Let´s take the following poker cards as an example:

![](https://i.imgur.com/rypTeme.jpg)

Our `experiment` is to take two cards for the deck, one at a time, each card extraction is an `event`. We define as outcomes that a card is of a defined 

If we introduce the card in the deck again before extracting the next one, we'll have `indepedent` events, if we don't the events will be `dependent`, due to the fact that the fact of removing one card from the deck will alter the probabilities of the next event.

## Concepts

Let's illustrate these concepts with poker cards and rolling dices:

* An **experiment** is a well-defined action, that might result in a number of outcomes.
* **Outcome**: Possible result of an `experiment`. Each outcome is unique, and different outcomes are `mutually exclusive`.
* The **sample space** is the set of all possible outcomes.
* An **event** is a collection of outcomes.
* A **probability** is a number between 0 and 1, both included, that describes the degree of confidence that we have in a prediction, 0 is none or false and 1 is all or true.

$$
P ( hearts ) = 0.25
$$

The probability of an event $ E $ is  $ P(E) $ is the number of possible outcomes of event $ E $ is $ n(E) $ divided by the number of outcomes of the sample space $ n(S) $. 
$$
\mathrm { P } ( \mathrm { E } ) = \frac { \mathrm { n } ( \mathrm { E } ) } { \mathrm { n } ( \mathrm { S } ) }
$$

#### Mutually exclusive events

We call **mutually exclusive events**, to two or more events that cannot happen simultaneously. For example in Poker cards we cannot draw a card that is hearts and diamonds at the same time, but we can have a card that is 2 and diamonds.
$$
P ( hearts \cup diamonds ) = P ( hearts ) + P ( diamonds )
$$

#### Conditional probability

A **conditional probability** is a probability based on some premise. I know that in my city there is a 5% chance of rain, but given that is autumn the probability raises to 25%, the premise is that it is autumn, this premise gives us additional information that allows us to have a more accurate prediction.
$$
P ( A \cap B ) = P ( A ) * P ( B )
$$


> We roll a six-sided dice, this is an experiment, we have 6 possible outcomes. If we get the number *3* by rolling the dice, we'll say that from this event of rolling the dice we observed the outcome *3*, that has a prior probability of 1/6. 

#### Independent Events

We'll say that 2 events are *independent* if one event doesn't give any information about another event. 

We have the following outcomes that we want to analyse: 
A = Outcome 3 in the first dice. 
B = Outcome 3 in the second dice.
$$
P ( A | B ) = P ( A )
$$
We'll read "*The probability of observing 3 in the first dice given that we got 3 in the second dice is the observing of getting 3 in the first dice.*"

> Rolling a second dice doesn't give us any information about the first dice.

When two events are *independent* the probability of both of them occurring is:

$$
P ( A \cap B ) = P ( A ) * P ( B )
$$
We can generalize this to multiple events:

$$
P \left[ \bigcap _ { i = 1 } ^ { n } A _ { i } \right] = \prod _ { i = 1 } ^ { n } P \left( A _ { i } \right)
$$
Here A means rolling a dice, it can be the same dice or different dices.

#### Dependent Events

When two events are *dependent* the probability of both of them occurring is:
$$
\mathrm { P } ( \mathrm { A } \text { and } \mathrm { B } ) = \mathrm { P } ( \mathrm { A } ) \times \mathrm { P } ( \mathrm { B } | \mathrm { A } )
$$

![](https://i.imgur.com/SM3ph2R.png)

#### Prior and Posterior distributions


The **prior probability distribution** (prior), is ones beliefs about its quantity before some evidence is taken into account.

The **posterior probability distribution** (posterior), is the revised probability of an event occurring after some evidence has been taken into account.

We´ll see in the [next article](https://www.danielsobrado.com/post/prior-and-posterior-distributions/) more about these probability distributions.
