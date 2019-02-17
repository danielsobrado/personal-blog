---
description: ""
author: "Daniel Sobrado"
date: 2014-01-08
linktitle: Functional Programming Basic Concepts
next: /tutorials/github-pages-blog
prev: /tutorials/automated-deployments
title: "Functional Programming Basic Concepts"
image: https://i.imgur.com/ewEDGca.jpg
tags : [
    "Functional Programming"
]
categories : [
	"Programming"
]
---

## Introduction

Functional programming is a programming paradigm, based on mathematical principles. The principles of functional programming are to avoid changing the state and to avoid mutating data.

Functional programming is declarative, we use expressions instead of statements.

## Advantages

In short functional programming will allow you to be more confident with the quality of your code because you'll be able to write code with less bugs in less time. Your code will be easier to understand and will be more reusable.

**Concurrency**: Pure functions are Thread-Safe, this makes parallel implementations much simpler.

**Maintenance**: Functions that don't have side effects have less errors and are easier to debug.

**Brevity**: Functional code is usually shorter.

**Testability**: State-less functions are easier to test, as we don't have to worry about external interactions, only about inputs and outputs.

**Modularity**: Pure functions allows us to build more modular code, which is coupled with reusability.

## Concepts

Let's enumerate and describe the main pillars of functional programming, each one deserves several separated articles:

### Higher-order functions

Functions are values and can be passed to other functions.

### Pure functions and Referential Transparency

We want to make sure that a function will perform the same actions and give the same results for the same inputs.

We call these functions *stateless functions*.

> An expression is referentially transparent if it can be replaced with its value without changing the program behavior.

This is the same as saying, no side effects! It is a function that depends only on its input parameters.

They allows us to read the code knowing that the result will be always the same, 

> Functions that are referentially transparent are called “*pure functions*”.

We can allow some exceptions to this, like printing details to the standard output or logs depending on the type of application and use case.

What we cannot do, is to access global variables that are not constant, or write to disk, network etc..

### Function composition

Passing a function to another function allows us to 

### Avoid shared state
### Avoid mutating state / Immutability

### Avoid side effects

### Functors

### Monads

## Functional Toolkit in Python

## Functional Toolkit in Java

## Scala as a functional programming language

Features of Scala:

**Type Inference**:

**Immutability**:

**Lazy Evaluation**:

**String Interpolation**:

**Case Classes**:

**Pattern Matching**:

**Companion Object**:

Scala has **functional programming capabilities** like: Anonymous functions, higher order functions, function composition, function currying,
nested functions, and functions with variable length parameters.

## Pure functional programming languages

Funtional programming is being all the rage during the last few years, every programming language wants to have his "functional way of doing things", you can do functional programming in Javascript.

But not every programming language was conceived from inception to be purely functional, like:

Lisp

Clojure