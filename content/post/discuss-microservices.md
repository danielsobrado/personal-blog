---
description: "Our code is growing and becoming unmanageable, we need to split it in pieces! Microservices to the rescue!."
author: "Daniel Sobrado"
date: 2016-01-28
linktitle: Lets dicuss microservices
next: /tutorials/github-pages-blog
prev: /tutorials/automated-deployments
title: "Let's discuss Microservices"
image: https://i.imgur.com/cGYyp2K.jpg
tags : [
	"Microservices"
]
categories : [
	"Programming"
]
---


### Introduction
Microservices are based on the principle "divide and conquer", usually to achieve scalability both horizontally and vertically.

To achieve true scalability we need to have some kind of concurrency and partitioning, meaning that we need to be able to split each task in pieces and be able to process them in parallel, this is difficult to achieve with one single application deployed over multiple servers with a growing list of features.

There is a trade-off between having too many services and too few or only one, and this depends on the scope of your project.

Add extra services provide some advantages but there are also disadvantages, having too many services is extreme, having only one service (Monolith pattern) is also extreme (Nano-services antipattern), the right balance is where we want to be.

### Monolith vs Microservices

**Monoliths**: Large applications that are difficult to understand, to scale and to maintain, they tend towards chaos as they grow.

**Microservices**: A collection of small, isolated services. Each one owns his data, does only one thing and does it well. A microservice is developed in isolation, and deployed independently, it can be replaced easily.

**Isolation**: Isolated services can be monitored, tested and debugged individually, this is the first step to adopt continuous delivery. It influences how you arrange your teams and distribute responsibilities. Isolation requires asynchronous communication.

**Autonomicity**:
**Single Responsibility**:
**Exclusive state**:
**Mobility**:

#### Why do we want to use microservices?

To build flexible and resilient services, to split the work between multiple teams and resources, decouple deployments, development speed, faster time-to-market and continuous delivery.

Smaller subprojects allow for quicker restart and quicker execution of unit tests which impacts the productivity and morale of the developers.

While Technology keeps evolving our monolithic application lags behind, having multiple teams working on multiple microservices allows us to experiment and gain expertise with the fittest technology, microservices are not dependent on particular technologies.

#### What can go wrong?

We can introduce additional complexity and slow down the entire project. New services require more packaging, releasing, latency, network traffic, and a proper orchestration service like Zookeeper.

### The endpoints

We need to communicate with our microservices, and we call endpoints to these API calls that allows us to interact with them.

We need static endpoints to communicate with the front-end and intra-service, a well designed and standardized API is required to effectively communicate, we can do this in different ways:

* **REST**: Usually over HTTP, allows to expose your API as URLs.

* **Thrift**: Generates RPC code for cross-language scalable interfaces, it is very popular in Hadoop ecosystems.

* **GraphQL**: A query language for the API, involves sending request over HTTP with the flexibility of a query language.

* **Kafka**:  Quick messaging queues ideal for low latency communications.

These are just some example, there are other options like SOAP, gRPC... Each with its own advantages and disadvantages, the right choice for the endpoint technology in the context of your use-case it deserves an article by itself.

Having multiple type of endpoints in the same architecture is possible, but the monitoring becomes more complicated.

### Concepts

* Reactive Systems
* Reactive Programming
* Event-driven Programming
* Events-first domain-driven Design 
* Event Sourcing
* Command Query responsibility segregation


Moving away from REST, we need an asynchronous intra-service communication channel.

We can optimize for reading or for writing, not for both. We need to consider this at the microservice level.

My stack for Microservices: Lagom/Akka/Play, Spray, Haproxy, Swagger, Kafka, Jenkins, SBT and Ansible. (And Elastic Stack for monitoring.)