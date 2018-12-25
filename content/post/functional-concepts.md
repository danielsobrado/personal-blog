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

# 1. Introduction

Functional programming is a programming paradigm, based on some principles

# 2. Advantages

# 3. Concepts

Let´s enumerate and describe the main pillars of functional programming, each one deserves several separated articles:

## 3.1 Pure functions and Referential Transparency

We want to make sure that a function will perform the same actions and give the same results for the same inputs.

We call these functions *stateless functions*.

> An expression is referentially transparent if it can be replaced with its value without changing the program behavior.

This is the same as saying, no side effects!

Allows us to read the code knowing that the result will be always the same, 

> Functions that are referentially transparent are called “*pure functions*”.

We can allow some exceptions to this, like printing details to the standard output or logs depending on the type of application and use case.

What we cannot do, is to access global variables that are not constant, or write to disk, network etc..

## 3.2 Function composition
## 3.3. Avoid shared state
## 3.4 Avoid mutating state / Immutability
## 3.5 Avoid side effects

### 3.5.1 Monads
