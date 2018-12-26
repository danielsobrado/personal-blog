---
description: "In Information Theory receiving a bit reduces our uncertainty by half, or by a factor of 2. Our uncertainty reduction is the inverse of the probability of the event occurring."
author: "Daniel Sobrado"
date: 2014-05-20
linktitle: Explaining Entropy
nomenu:
  main:
    parent: tutorials
prev: /tutorials/mathjax
next: /prior-posterior-probabilities
title: Explaining Entropy
noweight: 10
image: https://i.imgur.com/EG7uO7w.png
tags : [
    "entropy",
    "cross-entropy",
    "kl-divergence"
]
categories : [
    "Maths"
]
---

# Information theory

A bit is a number that is equal to 0 or 1. In [Information theory](https://en.wikipedia.org/wiki/Information_theory), receiving a bit reduces our uncertainty by half, or a factor of 2.

If our clients in the bank are likely to repay a loan or not, and we have our risk manager to tell us if a certain client repaid or not his loan, if the chance of the client being good or bad is 50%, our risk manager is reducing our uncertainty about the client by a factor of 2.

# Entropy

> " [Entropy](https://en.wikipedia.org/wiki/Entropy_(information_theory)) is a measure of information produced by a probabilistic stochastic process. If you have a stream of information and want to encode it as densely as possible, it helps to encode the more common elements with fewer bits than the less common elements. "

Now let's suppose that the risk manager can give us a score of the client from 1 to 8, ranking how much the client did repay, from nothing to everything, and these are equally likely.

When we get the report from the risk manager he is dividing our uncertainty by a factor of 8, that is 2<sup>3</sup>, he can send us 3 bits to communicate this.

He might send a larger text messages with many bits explaining the ranking with a label, but the real information we receive that reduces our uncertainty is 3 bits long. 

In this case we have a *uncertainty reduction factor* of 8 and we'll be able to compute the number of bits required to transmit this information using the logarithm: 

log<sub>2</sub>(8) = 3

In real life the possibilities are not always equal, let´s say that we have a 95% chance of having a good customer and 5% to have a bad one that doesn't repay the loan.

> Our uncertainty reduction is the inverse of the probability of the event occurring.

In this the number of bits we need to transmit this information case it's: 

​	log<sub>2</sub>(1/0.05)=4.322

We need at least 4.322 bits to communicate that the client is not repaying the loan.

We know from the properties of logarithms, that log<sub>2</sub>(1/0.05) is the same as -log<sub>2</sub>(0.05).

If the risk mangers tells us that the client is a good client, our uncertainty doesn't drop that much:

​	-log(0.95)=-0.074

On average a Risk Manager is going to provide on 95% of the cases 0.074 bits of information and in 5% of the cases 4.322 bits of information, in total: 

​	0.95 * 0.074 + 0.05 * 4.322 = 0.2864

We've just measured how uncertain the events are, to do that we've used the **Entropy equation**:
$$
H\left( p \right) = - \sum _ { i = 1 } ^ { n } p _ { i } \cdot \log _ { 2 \left( p _ { i } \right) }
$$

> This equation tells us about the uncertainty of our probability distribution.

If we have very few clients that don't repay loans, the information provided by the risk manager in general is quite certain, but if the delinquency increases and half of the clients don't repay on average our risk manager is going to reduce a lot our uncertainty, it is going to provide more bits of information.

Let's code an example in Python using   [scipy.stats.entropy](https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.entropy.html):

<pre class="prettyprint lang-py linenums">
from scipy import stats
print(stats.entropy(pk=[0.95, 0.05]))
<span class="nocode" style="color:white">
Output: 0.1985152433458726
</span>
</pre>

This figure doesn't match, what happened? By default this functions takes the logs in base 10, our example is in bits, we need to use base 2:

<pre class="prettyprint lang-py linenums">
from scipy import stats
print(stats.entropy(pk=[0.95, 0.05],base=2))
<span class="nocode" style="color:white">
Output: 0.2863969571159562
</span>
</pre>

Yes! this does matches our calculation. 

Let's validate it using the formula, we need to remember that:

$$
\log _ { b } ( a ) = \frac { \log ( a ) } { \log ( b ) }
$$

<pre class="prettyprint lang-py linenums">
from scipy import stats
import numpy as np
print(-np.sum(pk * np.log(pk)/np.log(2), axis=0))
<span class="nocode" style="color:white">
Output: 0.2863969571159562
</span>
</pre>

We can also use math.log that takes an additional argument to specify the base, in this case we won't be able to take advantage of the vectorization from NumPy arrays:

<pre class="prettyprint lang-py linenums">
import math
print(-0.95 * math.log(0.95,2) + -0.05 * math.log(0.05,2))
<span class="nocode" style="color:white">
Output: 0.28639695711595625
</span>
</pre>
We've calculated the entropy in binary terms and base 10, using scipy, numpy and the base math library! It's time to understand the cross-entropy that is so common in Data Science.
