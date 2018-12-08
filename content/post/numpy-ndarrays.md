---
description: "ndarray is the earth of NumPy, it's the main data storage object of the framework. It is a homogeneus array, all the components share the same data-type."
author: "Daniel Sobrado"
date: 2016-02-29
linktitle: Numpy ndarrays
next: /numpy-maths
prev: /numpy-introduction
title: "Numpy: ndarrays"
image: https://i.imgur.com/itRkuba.png
tags : [
    "Python",
	"Numpy"
]
categories : [
    "Data Science",
	"Programming"
]
---

# Creating ndarrays

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
diagonal = np.eye(3)
diagonal
<span class="nocode" style="color:white">
Output:
$ array([[1., 0., 0.],
         [0., 1., 0.],
         [0., 0., 1.]])
</span>
</pre>

Or any other value:

<pre class="prettyprint lang-py linenums">
all_three = np.full((3,3),3)
all_three
<span class="nocode" style="color:white">
Output:
$ array([[3., 3., 3.],
         [3., 3., 3.],
         [3., 3., 3.]])
</span>
</pre>

We can create ndarrays initialized with values:

<pre class="prettyprint lang-py linenums">
# 10 to 15
array1 = np.arange(10,20)
# 10 to 20. 2 by 2
array2 = np.arange(10,20,2)
# 5 steps from 0 to 1...
array3 = np.linspace(0, 1, 5)
# Generate an array from 1 to 10, in log10 space in 10 steps...
array4 = np.logspace(0, 1, 10, base=10.0)
<span class="nocode" style="color:white">
Output array1:
$ array([10, 11, 12, 13, 14, 15, 16, 17, 18, 19])
Output array2:
$ array([10, 12, 14, 16, 18])
Output array3:
$ array([0.  , 0.25, 0.5 , 0.75, 1.  ])
Output array4:
$ array([ 1.        ,  1.29154967,  1.66810054,  2.15443469,  2.7825594 ,
        3.59381366,  4.64158883,  5.9948425 ,  7.74263683, 10.        ])
</span>
</pre>

We can observe some attributes from an ndarray, with the following operations, for an array defined as `np.array([(2,4,6)])`:

* itemsize: Will return `4`, that is the number of bytes used by the array. 
* dtype: `int32` is the result, that is the type of the elements in the array. (we can have np.int32, np.float16, np.float32, or np.float64)
* ndim: 


| Data type	Description                    |
|------------------------------------------|
| bool_	Boolean stored as a byte           |
| int_	Default integer type (either int64 or int32) |
| intc	C int (either int32 or int64) |
| intp	C ssize_t (either int32 or int64) |
| int8	Byte (-128 to 127)                  |
| int16	Integer (-32768 to 32767)          |
| int32	Integer (-2147483648 to 2147483647) |
| int64	Integer (-9223372036854775808 to 9223372036854775807) |
| uint8	Unsigned integer (0 to 255)        |
| uint16	Unsigned integer (0 to 65535)     |
| uint32	Unsigned integer (0 to 4294967295) |
| uint64	Unsigned integer (0 to 18446744073709551615) |
| float_	Shorthand for float64.            |
| float16	Half precision float: sign bit, 5 bits exponent, 10 bits mantissa |
| float32	Single precision float: sign bit, 8 bits exponent, 23 bits mantissa |
| float64	Double precision float: sign bit, 11 bits exponent, 52 bits mantissa |
| complex_	Shorthand for complex128.       |
| complex64	Complex number, represented by two 32-bit floats |
| complex128	Complex number, represented by two 64-bit floats |


# Structured arrays

# Slice and dice

Let´s create a 5x5 simple matrix and start slicing it!

<pre class="prettyprint lang-py linenums">
A = np.arange(25)
A = A.reshape(5,5)
A
<span class="nocode" style="color:white">
Output:
$ array([[ 0,  1,  2,  3,  4],
         [ 5,  6,  7,  8,  9],
         [10, 11, 12, 13, 14],
         [15, 16, 17, 18, 19],
         [20, 21, 22, 23, 24]])
</span>
</pre>

The logic can be seen in the following highlighted image:

![](https://i.imgur.com/CnEM5JF.png)

# Broadcasting

When there is no ambiguity the smaller array will be expanded to match the shape of the bigger array.

<pre class="prettyprint lang-py linenums">
array = np.arange(1e8)
list = array.tolist()
<span class="nocode" style="color:white">
Output: 17.2 s ± 785 ms per loop (mean ± std. dev. of 7 runs, 1 loop each)
</span>
</pre>