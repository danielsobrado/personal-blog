---
description: "Numpy is a fundamental library to perform numerical operations in Python. This package is about multi-dimensional arrays and performance. It allows us to work in a more powerful and simplified way with matrix algebra, emphasizing matrix methods that are extensively used in statistics, mathematics and machine learning algorithms."
author: "Daniel Sobrado"
date: 2018-02-28
linktitle: Numpy Introduction
next: /tutorials/github-pages-blog
prev: /tutorials/automated-deployments
title: "Numpy: Introduction"
image: https://i.imgur.com/oQNt9Gt.jpg
tags : [
    "Python",
	"Numpy"
]
categories : [
    "Data-Science",
	"Programming"
]
---


## Introduction

Numpy is the core package for scientific computing, it has capabilities for fast processing of n-dimensional arrays and in general linear algebra.

There are multiple other well known packages in data science that rely on Numpy like Pandas and Scipy.

## Installing Numpy

For the examples we´ll just use pip to install Numpy, ideally it will be inside a container like Anaconda:

```
$ pip install numpy
```

## Numpy Arrays

ndarray is the earth of NumPy, it's the main data storage object of the framework.

### Why do we need other arrays?

We have Python lists and dictionaries, 

#### ndarrays are fast!

We are going to do a quick test using a juyter notebook and the magic command `%timeit` to compare the performance:

<pre class="prettyprint lang-py linenums">
array = np.arange(1e8)
list = array.tolist()
<span class="nocode" style="color:white">
Output: 17.2 s ± 785 ms per loop (mean ± std. dev. of 7 runs, 1 loop each)
</span>

%%timeit
for i, val in enumerate(array_list):
    array_list[i] = val * 1.5

<span class="nocode" style="color:white">
Output: 17.2 s ± 785 ms per loop (mean ± std. dev. of 7 runs, 1 loop each)
</span>

%%timeit
array * 1.5

<span class="nocode" style="color:white">
Output: 472 ms ± 43.1 ms per loop (mean ± std. dev. of 7 runs, 1 loop each)
</span>

</pre>

#### Creating ndarrays

We can get Numpy vector and a matrix rapidly from a Python list:

<pre class="prettyprint lang-py linenums">
vector = np.array([1,2,3,4])
vector
<span class="nocode" style="color:white">
Output:
$ array([1, 2, 3, 4])

</span>
matrix = vector.reshape((2,2))
matrix
<span class="nocode" style="color:white">
Output:
$ array([[1, 2],
         [3, 4]])
</span>
</pre>

We can quickly create matrices of ones and zeros: 

<pre class="prettyprint lang-py linenums">
all_zeros = np.zeros((3,3))
all_zeros
<span class="nocode" style="color:white">
Output:
$ array([[0., 0., 0.],
         [0., 0., 0.],
         [0., 0., 0.]])
</span>
all_ones = np.ones((3,3))
all_ones
<span class="nocode" style="color:white">
Output:
$ array([[1., 1., 1.],
         [1., 1., 1.],
         [1., 1., 1.]])
</span>
</pre>

We can observe some attributes from an ndarray, with the following operations, for an array defined as `np.array([(2,4,6)])`:

* itemsize: Will return `4`, that is the number of bytes used by the array. 
* dtype: `int32` is the result, that is the type of the elements in the array.
* ndim: 


#### Slice and dice

## Maths

### Linear Algrebra

### Statistics

## Reading and writing