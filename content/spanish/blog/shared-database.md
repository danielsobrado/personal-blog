---
description: "You've been asked to write a service that requires some information from one or multiple databases, accessing a database is easy, and writing some SQL is fast, I can do that! The problem comes when you have multiple applications and services accessing databases, and the schema of a table in the database changes, things get broken!"
author: "Daniel Sobrado"
date: 2016-01-25
linktitle: The shared database problem
next: /tutorials/github-pages-blog
prev: /tutorials/automated-deployments
title: "The shared database problem"
image: https://i.imgur.com/OSv3WF6.png
tags : [
	"Microservices",
	"SOA"
]
categories : [
	"Programming"
]
type: post
---

### The Problem

You've been asked to write a service that requires some information from one or multiple databases, accessing a database is easy, and writing some SQL is fast, I can do that!

The problem comes when you have multiple applications and services accessing databases, and the schema of a table in the database changes, things get broken!

Have you seen a place where nobody wants to change a table in the data warehouse because they don't know what will fail? Too often... What they do? 

Duplication! Create a new table with the changes in the schema for the new requirement, if this is possible, sometimes it is not even possible, the source might force you to make changes in the schemas, it can be a external vendor upgrading the product.

### Interfaces to services as a solution

Use interfaces, every application will expose its data using an interface, each interface by itself will define the logic to access the underlaying data and any other application or service will need to access through the interface, nobody will access the database directly.

If the underlaying schema changes, the logic in the interface will adapt to provide the same output for the same queries, this is something that we can easily test, and it is a contract that we have with our contract needs to change?

Not to mention, that having no control over whom is hitting the database and how often is a recipe for performance issues.

The goods news are that we can implement a lot of logic inside our services to handle load balancing and make use of service registries and service repositories, to build our logic based on contracts.

What happens when we have a bunch of applications accessing multiple services and a weak service goes down? Ouch, there are all interconnected and dependent, we are introducing serius points of failure that can cascade easily.

### Finally

Amazon introduced back in 2002 the API Mandate and banned any intersystem communication that wasn't using a service interface.

Amazon CEO Jeff Bezos, communicated:

> All teams will henceforth expose their data and functionality through service interfaces.
>
> Teams must communicate with each other through these interfaces.
>
> There will be no other form of inter-process communication allowed: no direct linking, no direct reads of another team’s data store, no shared-memory model, no back-doors whatsoever. The only communication allowed is via service interface calls over the network.
>
> It doesn’t matter what technology you use.
>
> All service interfaces, without exception, must be designed from the ground up to be externalize-able. That is to say, the team must plan and design to be able to expose the interface to developers in the outside world. No exceptions.
>
> Anyone who doesn’t do this will be fired. Thank you; have a nice day!

Later in 2009 Netflix moved to Microservices... However the term microservices was coined in a architects wokshops near Venice in May 2011.

Netflix, LinkedIn, Uber, Twitter etc... They all use an Event Driven Architecture and Apache Kafka for inter-service communication..)