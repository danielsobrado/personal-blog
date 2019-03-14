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

Let's define the concept or microservice and its goal, we don't want want to split the monolith in smaller chunks arbitrarily, we want to make sense and achieve some amazing capabilities, like resilience and scalability.

The right size of a microservice is the size that allows us to build autonomous services, that can *do one thing and do it well*:

**Monoliths**: Large applications that are difficult to understand, to scale and to maintain, they tend towards chaos as they grow.

**Microservices**: A collection of small, isolated services. Each one owns his data, does only one thing and does it well. A microservice is developed in isolation, and deployed independently, it can be replaced easily.

**Isolation**: Isolated services can be monitored, tested and debugged individually, this is the first step to adopt continuous delivery. It influences how you arrange your teams and distribute responsibilities. Isolation requires asynchronous communication.

**Autonomy**: When services are isolated they can take decision independently, they can only make promises about their own behaviour.

**Resilience**: Capability to self-heal. An autonomous service has all the information required to resolve a conflict or repair a failure scenario, it doesn't have external dependencies.

**Single Responsibility**: A service should *“only have one reason to change”*. A service should provide a single piece of functionality in the domain making it easier to scale, understand, maintain and extend.

**Exclusive state**: You can ask for a service state, but you cannot read it, a service is responsible for its own state and its persistence, modelling each service as a *Bounded Context* can be helpful, this will drive us to Domain-Driven Design (DDD).

#### Why do we want to use microservices?

To build flexible and resilient services, to split the work between multiple teams and resources, decouple deployments, development speed, faster time-to-market and continuous delivery.

Smaller subprojects allow for quicker restart and quicker execution of unit tests which impacts the productivity and morale of the developers.

While Technology keeps evolving our monolithic application lags behind, having multiple teams working on multiple microservices allows us to experiment and gain expertise with the fittest technology, microservices are not dependent on particular technologies.

#### What can go wrong?

We can introduce additional complexity and slow down the entire project. New services require more packaging, releasing, latency, network traffic, and a proper orchestration service like Zookeeper.

Versioning microservices is an anti-pattern, they should be treated as living entities that evolve, not as static releases.

### Resources around microservices

There are a number of decisions you need to take before starting to code your first microservice:

* **Physical servers vs Cloud**: Does your company has restriction regarding data confidentiality? Most banks do.
* **Databases**: Dedicated, shared, RDBMS, NOSQL...
* **OS**: Windows vs Linux, any special flavour? Are you going to use GPUs? .Net? 
* **Resource Isolation**: Docker? Mesos?
* **Configuration management**: Ansible, Chef, Puppet..
* **Monitoring**: Naggios,? Kibana?
* **Logging**: You need to centralize your logs, Elastic Stack? Splunk? 

### The endpoints

We need to communicate with our microservices, and we call endpoints to these API calls that allows us to interact with them.

We need static endpoints to communicate with the front-end and intra-service, a well designed and standardized API is required to effectively communicate, we can do this in different ways:

- **REST**: Usually over HTTP, allows to expose your API as URLs. (Simple but Synchronous/Blocking)
- **Thrift**: Generates RPC code for cross-language scalable interfaces, it is very popular in Hadoop ecosystems.
- **GraphQL**: A query language for the API, involves sending request over HTTP with the flexibility of a query language.
- **Messaging**:  Kafka or Celery with RabbitMQ are examples of quick messaging queues that are ideal for low latency communications. (Asynchronous but queues and brokers can become points of failure and messaging can lead to race conditions)

These are just some examples, there are other options like SOAP, gRPC... Each with its own advantages and disadvantages, the right choice for the endpoint technology in the context of your use-case it deserves an article by itself.

Having multiple type of endpoints in the same architecture is possible, but the monitoring becomes more complicated.

### Service discovery, Service registry and Load balancing

In general we need to know the IPs of each other microservices to communicate with them, and we are going to have several instances of the same microservice, that is the purpose of it, to have resilience and scalability and to be able to scale particular functionalities on demand.

We need to route request to the right services, we need to know where they are and that they are healthy, to do this use use the *service discovery*, in the Hadoop ecosystem, Zookeeper is used for this purpose.

The service discovery keeps track of all the IPs and Ports available in the ecosystem by using a database called the *service registry*.

Once we start receiving request we need to understand which services are busy and which ones can take more load, we'll do this with a Load Balancer, common load balancers are: Amazon Web Services Elastic Load Balancer, Netflix Eureka, HAProxy, and Nginx.

### Other concepts

One of the advantages of working with microservices is that we can optimize each microservice to do one task very well.

If we are optimizing for latency and scalability we know that we can optimize for reading or for writing, not for both. We need to consider this at the microservice level.

* Reactive Systems
* Reactive Programming
* Event-driven Programming
* Events-first domain-driven Design 
* Event Sourcing
* Command Query Responsibility Segregation

We'll discuss these concepts and many more in the next articles of this series.