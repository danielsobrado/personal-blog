---
description: "Arguably the most famous machine learning low-level frameworks. Pytorch created by Facebook and used as the foundation in projects like Uber's pyro and Tensorflow created by Google and widely used. Both frameworks are used by the research community and for advanced models that are not readily available in high-level libraries like Keras."
author: "Daniel Sobrado"
date: 2018-09-25
linktitle: Tensorflow Pytorch Basics
next: /tutorials/GitHub-pages-blog
prev: /tutorials/automated-deployments
title: "Tensorflow vs Pytorch: Basics"
weight: 10
image: https://i.imgur.com/k3fRAC4.jpg
tags : [
    "Tensorflow",
    "Pytorch"
]
categories : [
    "Data-Science"
]
---


# Introduction

The best way to learn a framework is to learn two at the same time and compare how things are being achieved in different ways, understanding the advantages and disadvantages.

Tensorflow and Pytorch are frameworks for fast tensor manipulation that is what is required for deep learning and some other machine learning methods.

Both heavily oriented towards machine learning and especially deep learning are low-level libraries to operate on tensors (n-dimensional arrays).

The beginner data scientist, he usually looks at the higher level APIs and libraries that provide out-of-the-box algorithms ready to apply with the only effort of setting up some hyper-parameters. 

## Introduction to Tensorflow

Tensorflow is Google´s open source solution for computing large amounts of data, it is a symbolic math library based on data-flow programming. 

### Installation

You can install Tensorflow using pip or using your favourite virtual environments and package managers like Anaconda or VirtualEnv.

Let´s start with plain pip:

```
$ pip install tensorflow
```

Or the GPU version: (Usually you´ll require CUDA installed)

```
$ pip install tensorflow-gpu
```

Now we´ll install it using Anaconda:

```
$ conda install tensorflow
$ conda install tensorflow-gpu
```

Which one is better? Anaconda makes use of Intel Math Kernel Library for Deep Neural Networks or the MKL-DNN.

![](https://i.imgur.com/l6ZbUuP.png)

Let´s verify the installation:

<pre class="prettyprint lang-py">
import tensorflow as tf
print("Tensorflow version: {}".format(tf.__version__))

<span class="nocode" style="color:white">
Output:
$ Tensorflow version: 1.10.0
</span>
</pre>

### Tensors

### Placeholders

Placeholders are use to feed external data into a graph, we don't need to initialize them.

The size of a placeholder is dynamic, can change during the execution.

We use feed_dict to feed data into the placeholders.

You can provide values for placeholders defined earlier to the session as python dictionary where the key is your placeholder name and value can be a list.

<pre class="prettyprint lang-py linenums">
a = tf.placeholder(tf.float32)
b = a+5
with tf.Session() as session:
    result = session.run(y, feed_dict={x: [1, 2, 3]})

print(result)
<span class="nocode" style="color:white">
Output:
$ 
</span>
</pre>

When we don't know the number of rows, that we are going to feed we can use **None**: x = tf.placeholder(tf.float32, shape=(None,4))

> Placeholders can be the input flows for our neural networks.

### Variables

Variables in Tensorflow, are similar to variables in standard programming languages, they can be initialized and modified later.

Variables are used to store the state of the graph, they need a value to be initialized during the declaration.

The size of a variable is fixed and specied while constructionf the graph.

> Variables can be the the weights in our neural networks.

### Graphs and Sessions

Any Tensorflow program is going to be a Graph, each operation is a function that will be evaluated at that point of the graph.

A graph defines the computation. It doesn’t compute anything by itself, it doesn’t hold any values, it defines the operations specified the code.

Tensorflow uses lazy evaluation (also called call-by-need), in other words, Tensorflow will generate a computational graph that gets executed inside a session.

There is eager execution from TensorFlow v1.5 onwards.

<pre class="prettyprint lang-py linenums">
x = [[2.]]
m = tf.matmul(x, x)

print(m)

<span class="nocode" style="color:white">
Output:
$ Tensorflow version: 1.10.0
</span>
</pre>

A session allows executing graphs and sections of graphs. It allocates resources (distributed or not) and contains the values of intermediate results and variables.

TensorFlow creates a default graph for you, the first two lines of the code are optional.

graph = tf.Graph()
with graph.as_default():

<pre class="prettyprint lang-py linenums">
import tensorflow as tf
x = tf.constant([3])
y = tf.constant([4])
z = tf.add(x,y)
session = tf.Session()
result = session.run(z)
print(result)

<span class="nocode" style="color:white">
Output:
$ [5]
</span>
</pre>

## Introduction to Pytorch

Pytorch is Facebook's solution for the same problem, a framework to handle large amounts of matricial-like data and leverage on the use of GPUs.

Pytorch is known for its simplicity. It uses Dynamic computation for greater flexibility.

### Installation

```
$ conda install pytorch cuda90 
```

```
$ conda install pytorch-cpu
```

Since PyTorch 0.4.0, there is official Window Support.

### Tensors and Variables
Pytorch provides two data abstractions Tensors and Variables.

Tensors are similar to numpy arrays but they have GPU support and methods to switch between CPU and GPU.

We can slice tensors using the notation 'tensor[:slice index]'.

### 
<pre class="prettyprint lang-py linenums">
import torch
x = torch.Tensor([3])
y = torch.Tensor([4])
z = x+y
print(z)  

<span class="nocode" style="color:white">
Output:
 7
[torch.FloatTensor of size 1]
</span>
</pre>

# Let's implement RMSE 

Root Mean Square Error (RMSE) is one of the most used loss functions in Deep Learning.

Where Y is the true or reference sample and Y_hat is the predicted result:

<div id="el"><span>$$RMSE = \sqrt{\Sigma_{i=1}^{n}{\frac{(\hat{y_i} - y_i)^2}{n}}}$$</span></div>

### RMSE using numpy

<pre class="prettyprint lang-py linenums">
import numpy as np

def rmse(y, y_hat):
    y_actual=np.array(y)
    y_pred=np.array(y_hat)
    error=(y_actual-y_pred)**2
    error_mean=round(np.mean(error))
    error_sqrt=sqrt(error_mean)
    return error_sqrt
</pre>

### RMSE using scikit-learn

<pre class="prettyprint lang-py linenums">
import numpy as np
from sklearn import metrics

def rmse(y, y_hat):
    return np.sqrt(metrics.mean_squared_error(y, y_hat))
</pre>

### RMSE using Tensorflow
<pre class="prettyprint lang-py linenums">
import torch

def rmse(y, y_hat):
    return tf.sqrt(tf.reduce_mean(tf.square((y - y_hat))))
</pre>

### RMSE using Pytorch
<pre class="prettyprint lang-py linenums">
import tensorflow as tf

def rmse(y, y_hat):
    return torch.sqrt(torch.mean((y - y_hat).pow(2)))
</pre>

#### Comparison

We've seen the basics of Tensorflow and Pytorch and apart for the syntaxis they don't look so difference, the main differences will come later, these are the fundations to start playing with them.

We've also implemented one common loss function in several ways.

You can also use a library like StatsModels and use it's own implementation: [RMSE](http://www.statsmodels.org/devel/generated/statsmodels.tools.eval_measures.rmse.html#statsmodels.tools.eval_measures.rmse)

And investigate in github, how this has been [implemented](https://github.com/statsmodels/statsmodels/blob/d7936886235aadf1f3ccf1fafb2411a0c1219da5/statsmodels/tools/eval_measures.py).

You can find valuable tips like:

> This uses ```numpy.asanyarray``` to convert the input. Whether this is the desired result or not depends on the array subclass, for  example numpy matrices will silently produce an incorrect result.
