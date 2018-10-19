---
description: "Our code is growing and becoming unmanageable, we need to split it in pieces! Microservices to the rescue!."
author: "Daniel Sobrado"
date: 2018-01-28
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
Microservices are based on the principle "divide and conquer".

There is a trade-off between having too many services and too few or only one, and this depends on the scope of your project.

Add extra services provide some advantages but there are also disadvantages, having too many services is extreme, having only one service (Monolith pattern) is also extreme (Nano-services antipattern), the right balance is where we want to be.

### Monolith vs Microservices

**Monoliths**: Large applications that are difficult to understand, to scale and to maintain, they tend towards chaos as they grow.

**Microservices**: A collection of small, isolated services that each owns their data. They are scalable and resilient to failure.

**Isolation**: Isolated services can be monitored, tested and debugged individually, this is the first step to adopt continuous delivery. It influences how you arrange your teams and distribute responsibilities. Isolation requires asynchronous communication.
**Aotonomicity**
**Single Responsibility**
**Exclusive state**
**Mobility**

#### Why do we want to use microservices?

To build flexible and resilient services, to split the work between multiple teams and resources, decouple deployments, development speed, faster time-to-market and continuous delivery.

Smaller subprojects allow for quicker restart and quicker execution of unit tests which impacts the productivity and morale of the developers.

#### What can go wrong?

We can introduce additional complexity and slow down the entire project. New services require more packaging, releasing, latency, network traffic, and a proper orchestration service like Zookeeper.

### Concepts

* Reactive Systems
* Reactive Programming
* Event-driven Programming
* Events-first domain-driven Design 
* Event Sourcing
* Command Query responsibility segregation


Moving away from REST, we need an asynchronous intra-service communication channel.

We can optimize for reading or for writing, not for both. We need to consider this at the microservice level.

My stack for Microservices: Lagom/Akka/Play, Spray, Haproxy, Swagger, Jenkins, SBT and Ansible. (And Graphite for monitoring.)