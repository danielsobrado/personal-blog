---
description: "Arguably the most famous machine learning low-level frameworks. Pytorch created by Facebook and used as the foundation in projects like Uber's pyro and Tensorflow created by Google and widely used. Both frameworks are used by the research community and for advanced models that are not readily available in high-level libraries like Keras."
author: "Daniel Sobrado"
date: 2016-09-25
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

For this series we are going to install Tensorflow and Pytorch using Anaconda in Windows together with Jupyter Notebooks:

```
$ conda create --name ml tensorflow jupyter scikit-learn matplotlib python=3
$ activate ml
$ conda install -c pytorch pytorch
$ pip install jupyter-tensorboard
$ jupyter notebook
```

## Introduction to Tensorflow

Tensorflow is Google´s open source solution for computing large amounts of data, it is a symbolic math library based on data-flow programming. 

### Installation

You can install Tensorflow using pip or using your favorite virtual environments and package managers like Anaconda or VirtualEnv.

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
$ Tensorflow version: 1.11.0
</span>
</pre>

### Tensors

To start with we can consider that Tensor a tensor is a matrix of any order, zero for a sigle value, one for a venctor, two for a matrix...

* Boolean:  Boolean (`tf.bool`).
* String:   Variable length (`tf.string`).
* 8 bits:	Signed Integer (tf.int8) and Unsigned Integer (`tf.uint8`).
* 16 bits:	Integer (`tf.int16`).
* 32 bits:	Floating (`tf.float32`) and Integer (`tf.int32`).
* 64 bits:	Floating (`tf.float64`) and Integer (`tf.int64`).
* Complex 64 and 128 bits: Complex number with real and Imaginary parts, represented by two 64-bit floats (real &
imag. (`tf.complex64` and `tf.complex128`)
* Quantized Ops 8 and 32 bits: Signed Integer (`tf.qint8` and `tf.qint32`) and Unsigned Integer (`tf.quint8`).

It’s possible to change the type of a tensor by using casting functions such as `tf.to_double()`, `tf.to_float()`, `tf.to_int32()`,
`tf.to_int64()`...

Tensors have 3 attributes:

* rank: Number of axes, 0 for a scalar, 1 for a vector, 2 for a matrix...
* shape: The lenght of each axes, for example for a matrix we can have a shape of (2,2).
* type: Similar to dtype in Numpy, this is the data type, like uint8, float32, float64 ...


#### Create tensor with zeros

We can initialize tensors with zeros or ones using the following methods `tf.zeros()` and `tf.ones()`:

<pre class="prettyprint lang-py linenums">
tf.zeros(3)

<span class="nocode" style="color:white">
Output:
$ <tf.Tensor 'zeros:0' shape=(3,) dtype=float32>
</span>
</pre>

It is possile to define the type of the values stored in your tensor by using `dtype`, e.g. `tf.zeros((3,3), dtype=tf.int32)`

#### Evaluate the value of a tensor or ones

Using `tf.Tensor.eval()` we'll get the value of a tensor evaluated and returned as a numpy array `numpy.ndarray`.

<pre class="prettyprint lang-py linenums">
tf.InteractiveSession()
all_ones = tf.ones(3)
all_ones.eval()

<span class="nocode" style="color:white">
Output:
$ array([ 1., 1., 1.], dtype=float32)
</span>
</pre>

Note: we need to initialize `tf.InteractiveSession()` to get the values returned to us during the session.

#### Filling a tensor with other values

Using `tf.fill` you can create a tensor filled with any value:

<pre class="prettyprint lang-py linenums">
all_threes = tf.fill((3, 3), value=3.)
all_threes.eval()

<span class="nocode" style="color:white">
Output:
$ array([[3., 3., 3.],
$        [3., 3., 3.],
$        [3., 3., 3.]], dtype=float32)
</span>
</pre>

#### Filling with random normally distributed values

Using `tf.random_normal()`

`tf.truncated_normal()`

<pre class="prettyprint lang-py linenums">
normal_distribution = tf.random_normal((3, 5), mean=0, stddev=1)
normal_distribution.eval()

<span class="nocode" style="color:white">
Output:
$ array([[ 2.0141907 ,  0.5739892 ,  0.35740602,  0.21828577,  1.5545886 ],
$        [-1.4343542 ,  0.8118261 , -0.5939968 , -0.7263036 ,  0.8720175 ],
$        [ 0.16085641, -0.0033439 , -0.45639333, -0.5825363 , -1.1458815 ]],
$       dtype=float32)
</span>
</pre>

You can also use `tf.random_uniform()`

#### Tensor operations

We can perform multiple operations in our tensors:

* Adding, substracting, multiplying and dividing is done with simple operations
* Creating an identity matrix by using `tf.eye`, this matrix has all its values as zeros except the diagonal that are ones.
* Matrix transpose `tf.matrix_transpose` and matrix multiplication `tf.matmul`.

<pre class="prettyprint lang-py linenums">
normal_distribution = tf.random_normal((2, 2), mean=0, stddev=1)
normal_distribution.eval()

<span class="nocode" style="color:white">
Output:
$ array([[-0.73437649, -0.77678096],
$ [ 0.51697761, 1.15063596]], dtype=float32)
</span>
</pre>

### Constants

Using `tf.constant`

<pre class="prettyprint lang-py linenums">
a = tf.constant(4)
a.eval()


<span class="nocode" style="color:white">
Output:
$ 4

</span>
</pre>

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

<pre class="prettyprint lang-py linenums">
x = tf.constant([1,2,3,4])
y = tf.constant([5,6,7,8])

result = tf.multiply(x,y)
session = tf.Session()
print(session.run(result))
session.close()

<span class="nocode" style="color:white">
Output:
$ [ 5 12 21 32]
</span>
</pre>

We´ve seen that we define the session with ´tf.Session´, executed it with ´session.run´ and closed it with ´session.close´.

From TensorFlow v1.5 onwards it is possible to use eager execution.

<pre class="prettyprint lang-py linenums">
x = tf.constant([1,2,3,4])
y = tf.constant([5,6,7,8])
z = tf.mutiply(x, y)

print(z.eval())

<span class="nocode" style="color:white">
Output:
$ [ 5 12 21 32]
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

### Tensorboard

Tensorboard is a visualization tool, that will help us understanding, visualizing and debugging our code. 

There is handy pupyter extension that we´ll be using to quickly start our tensorboard, it is installed with:

```
$ pip install jupyter-tensorboard
```

We can see our graph with its variables and operations:

## Introduction to Pytorch

Pytorch is Facebook's solution for the same problem, a framework to handle large amounts of matricial-like data and leverage on the use of GPUs.

Pytorch is known for its simplicity. It uses Dynamic computation for greater flexibility.

### Installation

It is recommended to install Pytorch using Anaconda on its GPU version:

```
$ conda install pytorch cuda90 
```

Or CPU one:

```
$ conda install pytorch-cpu
```

Since PyTorch 0.4.0, there is official Windows Support.

### Tensors 
Pytorch provides multiple data abstractions for Tensors:

* Variables: `tf.Variable`
* Constants: `tf.constant`
* Placeholders: `tf.placeholder`
* Sparse Tensors: `tf.SparseTensor`

Tensors are similar to numpy arrays but they have GPU support and methods to switch between CPU and GPU.

We can slice tensors using the notation 'tensor[:slice index]'.

We can find the shape of a Tensor using `tf.shape()` and change it using `tf.reshape()`:

<pre class="prettyprint lang-py linenums">
import tesorflow as tf 
a = tf.Variable("String Tensor", tf.string)
print(tf.shape(a))

<span class="nocode" style="color:white">
Output:
$ <tf.Tensor 'Shape:0' shape=(0,) dtype=int32>
</span>

b = tf.Variable([1,2], tf.int32)
print(tf.shape(b))

<span class="nocode" style="color:white">
Output:
$ Tensor("Shape_1:0", shape=(1,), dtype=int32)
</span>

c = tf.Variable([[1,2], [3.1, 4]])
print(tf.shape(c))
<span class="nocode" style="color:white">
Output:
$ Tensor("Shape_3:0", shape=(2,), dtype=int32)
</span>
d = tf.reshape(c,[1,4])
print(d)
<span class="nocode" style="color:white">
Output:
$ Tensor("Reshape_3:0", shape=(1, 4), dtype=float32)
</span>
</pre>

Tensors can contain elements of a single data type, the types supported are:

* 64 bits: Floating (`torch.float64` or `torch.double`) and Integer (`torch.int64` or `torch.long`)
* 32 bits: Floating (`torch.float32` or `torch.float`) and Integer (`torch.int32` or `torch.int`)
* 16 bits: Floating (`torch.float16` or `torch.half`) and Integer (`torch.int16` or `torch.short`)
* 8 bits: Integer Signed (`torch.int8`) and Unsigned (`torch.uint8`)

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

# Hello world!

Let´s do the typical hello world program in Tensorflow:

<pre class="prettyprint lang-py linenums">
import tensorflow as tf
hello = tf.constant("Hello world!")
session = tf.Session()
print(session.run(hello))
<span class="nocode" style="color:white">
Output:
b'Hello world!'
</span>
</pre>

And now in Pytorch, uppps! We don´t have String tensors in Pytorch, should we do 2+2 instead?

<pre class="prettyprint lang-py linenums">
import torch
a = torch.Tensor([2])
print(a+a)
<span class="nocode" style="color:white">
Output:
tensor([4.])
</span>
</pre>

# Let's implement RMSE 

Root Mean Square Error (RMSE) is one of the most used loss functions in Deep Learning.

Where Y is the true or reference sample and Y_hat is the predicted result:

$$ RMSE = \sqrt{\Sigma_{i=1}^{n}{\frac{(\hat{y_i} - y_i)^2}{n}}} $$

#### RMSE using numpy

We can use plain python with numpy, to calculate RMSE, we can see it is complete calculation step by step:

<pre class="prettyprint lang-py linenums">
import numpy as np
def rmse(y, y_hat):
​    y_actual=np.array(y)
​    y_pred=np.array(y_hat)
​    error=(y_actual-y_pred)**2
​    error_mean=round(np.mean(error))
​    error_sqrt=sqrt(error_mean)
​    return error_sqrt
</pre>

#### RMSE using scikit-learn

With the help of scikit-learn we can save time and lines of code by using:

<pre class="prettyprint lang-py linenums">
import numpy as np
from sklearn import metrics

def rmse(y, y_hat):
​    return np.sqrt(metrics.mean_squared_error(y, y_hat))
</pre>

#### RMSE using Tensorflow

The implementation of Tensorflow doesn't look too different to the one in scikit-learn, but in this case we are running it into a graph and session and this can be distributed and take advantage of the GPU:

<pre class="prettyprint lang-py linenums">
import tensorflow as tf
def rmse(y, y_hat):
​    return tf.sqrt(tf.reduce_mean(tf.square((y - y_hat))))
</pre>

#### RMSE using Pytorch

Pretty much the same with Pytorch:

<pre class="prettyprint lang-py linenums">
import torch
def rmse(y, y_hat):
​    return torch.sqrt(torch.mean((y - y_hat).pow(2)))
</pre>

#### Comparison

We've seen the basics of Tensorflow and Pytorch and apart for the syntaxes they don't look so different, the main differences will come later, these are the foundations to start playing with them.

Tensorflow uses *static graphs* that means you define the graphs and runs them, PyTorch is popular because you can define the graph during the execution, this is called *dynamic graphs*, we'll see this later in detail.

We've also implemented one common loss function in several ways.

You can also use a library like StatsModels and use it's own implementation: [RMSE](http://www.statsmodels.org/devel/generated/statsmodels.tools.eval_measures.rmse.html#statsmodels.tools.eval_measures.rmse)

And investigate in github, how this has been [implemented](https://github.com/statsmodels/statsmodels/blob/d7936886235aadf1f3ccf1fafb2411a0c1219da5/statsmodels/tools/eval_measures.py).

You can find valuable tips like:

> This uses ```numpy.asanyarray``` to convert the input. Whether this is the desired result or not depends on the array subclass, for  example numpy matrices will silently produce an incorrect result.
