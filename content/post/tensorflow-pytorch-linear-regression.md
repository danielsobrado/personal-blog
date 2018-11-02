---
description: "Arguably the most famous machine learning low-level frameworks. Pytorch created by Facebook and used as the foundation in projects like Uber's pyro and Tensorflow created by Google and widely used. Both frameworks are used by the research community and for advanced models that are not readily available in high-level libraries like Keras."
author: "Daniel Sobrado"
date: 2012-12-25
linktitle: Tensorflow Pytorch Linear Regression
next: /tutorials/GitHub-pages-blog
prev: /tutorials/automated-deployments
title: "Tensorflow vs Pytorch: Linear Regression"
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


## Introduction to Linear Regression

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

or the GPU version: (Usually you´ll require CUDA installed)

```
$ pip install tensorflow-gpu
```

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

The home page, or landing page, is the first page that many visitors to a site see. It is the index.html file in the root directory of the website. Since Hugo writes files to the public/ directory, our home page is public/index.html.

### Graphs in Tensorflow

Any Tensorflow program is going to be a Graph, each operation is a function that will be evaluated at that point of the graph.

Eager execution in TensorFlow v1.5

<pre class="prettyprint lang-py">
x = [[2.]]
m = tf.matmul(x, x)

print(m)
<span class="nocode" style="color:white">
Output:
$ Tensorflow version: 1.10.0
</span>
</pre>

### Placeholders

### Variables

### Mathematical Operations

### The Session

<pre class="prettyprint lang-py">
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

We can slice tensors using the notation 'tensor[:slice index]'

### 
<pre class="prettyprint lang-py">
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
