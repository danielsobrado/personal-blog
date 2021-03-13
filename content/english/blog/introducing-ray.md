

---
author: "Daniel Sobrado"
title: "Introducing Ray"
date: 2021-1-7
draft: false
image: https://i.imgur.com/Fob7myA.png
tags : [
    "Python"
]
categories : [
	"Programming"
]
type: post
---

Recently I had a request to match some counterparty names from different files.

I decided to script it quickly in a python notebook to validate the approach.

I created some test data with [mockaroo](https://www.mockaroo.com/) to simulate the use-case.

As one of the files had around 500K entries, the Levenshtein Distance algorithm, which I initially tried quite successfully, took nearly 5 minutes per record on my laptop.

> The Levenshtein distance is a string metric for ranking the difference between two sequences. Informally, the Levenshtein distance between two strings is the minimum amount of single-character modifications.

I had to do the same for several thousands of counterparty names. It could take weeks to execute.

We all know that Python is not the best language for out-of-the-box performance and multithreading.

And I matched it against some random combinations of names and surnames taken from [NameDatabases](https://github.com/smashew/NameDatabases) .

I decided to try ray and go full multithread! And also spread the workload over a cluster.

Install it with pip:

``pip install ray``

It has a simple API:
* ray.init(): Used to initialize the context, you can specify the number of CPUs to use.
* @ray.remote: Is a decorator that makes your class or function a ray actor.
* .remote: Invokes an asynchronous remote call to a method.
* ray.put(): Passes an object to a remote function synchronously. It returns its ID.
* ray.get(ids): Also synchronous returns and object or list of objects from the ID or IDs.
* ray.wait(ids): Returns the lists of objects that are ready and not ready.

It is a simple example of how to use ray to parallelize tasks; it easily can be expanded to many other use cases. 

The obvious one is hyper-parameter optimization; it will allow you to spread the workload across multiple GPUs.

If you want to dig deeper into this topic, I suggest you review the [design patters for ray](https://docs.google.com/document/d/167rnnDFIVRhHhK4mznEIemOtj63IOhtIPvSYaPgI4Fg/edit#). 

There are many integrations with ray, for example spacy:

``pip install spacy-ray``

You have a list of integrations [here](https://docs.ray.io/en/master/ray-libraries.html). 

As a bonus, you can also use ray on the JVM; find some Java examples in the [documentation](https://docs.ray.io/en/master/walkthrough.html).
Not only that, you can create cross-language execution with Python calling Java actors and vice-versa.


