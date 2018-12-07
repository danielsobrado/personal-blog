---
description: "Numpy is a fundamental library to perform numerical operations in Python. This package is about multi-dimensional arrays and performance. It allows us to work in a more powerful and simplified way with matrix algebra, emphasizing matrix methods that are extensively used in statistics, mathematics and machine learning algorithms."
author: "Daniel Sobrado"
date: 2016-02-30
linktitle: Numpy Maths
next: /tutorials/github-pages-blog
prev: /numpy-ndarrays
title: "Numpy: Doing some maths"
image: https://i.imgur.com/KxesLIK.png
tags : [
    "Python",
	"Numpy"
]
categories : [
    "Data Science",
	"Programming",
	"Maths"
]
---

# Linear Algebra

## Matrix object

This object is always two dimensional, and it doesn´t use the default broadcasting from ndarray.

We can create an identity matrix using np.eye:

<pre class="prettyprint lang-py linenums">
identity = np.eye(3)
identity
<span class="nocode" style="color:white">
Output: 
$ array([[ 1.,  0.,  0.],
$        [ 0.,  1.,  0.],
$        [ 0.,  0.,  1.]])
</span>


array([[ 1.,  0.,  0.],
       [ 0.,  1.,  0.],
       [ 0.,  0.,  1.]])
</pre>

# Statistics

# Reading and writing