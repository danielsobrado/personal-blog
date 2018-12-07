---
description: "Numpy is a fundamental library to perform numerical operations in Python. This package is about multi-dimensional arrays and performance. It allows us to work in a more powerful and simplified way with matrix algebra, emphasizing matrix methods that are extensively used in statistics, mathematics and machine learning algorithms."
author: "Daniel Sobrado"
date: 2016-02-28
linktitle: Numpy Introduction
next: /numpy-ndarrays
prev: /tutorials/automated-deployments
title: "Numpy: Introduction"
image: https://i.imgur.com/oQNt9Gt.jpg
tags : [
    "Python",
	"Numpy"
]
categories : [
    "Data Science",
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

It is a homogeneus array, all the components share the same data-type. 

### Why do we need other arrays?

We have Python lists and dictionaries, why do we need to have another package?

* Fast: It is developed in C and it´s very fast, in the background numpy uses parallel computation to perform the operations.
* Compact: It requires less storage compared to the python implementation, it is designed store data in a more efficient way. 

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

We can see that the multiplication in Numpy is around 40 times faster than the solution in pure Python.

#### ndarrays are compact!

Python lists are arrays of pointers to Python pointers while NumPy ndarrays are blocks of data, that are less flexible due to their nature, they need to be homogeneus, but they require less space.

The smallest Python object will require 4 bytes per pointer plus 16 bytes for the object itself. (4 for type pointer, 4 for reference count, 4 for value and the memory allocators)

You cannot use `sys.getsizeof()` to verify the amount of memory consumed as per the documentation *"Only the memory consumption directly attributed to the object is accounted for, not the memory consumption of objects it refers to."*

Let´s move on creating some ndarrays! 