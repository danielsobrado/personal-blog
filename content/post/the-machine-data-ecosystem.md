---
description: "There are two known platforms for machine data, Splunk and Elastic Stack, let's do some research..."
author: "Daniel Sobrado"
date: 2013-09-28
linktitle: The machine data ecosystem
nomenu:
  main:
    parent: tutorials
prev: /tutorials/mathjax
next: /prior-posterior-probabilities
title: The machine data ecosystem
noweight: 10
image: https://i.imgur.com/UwxfyJ9.png
tags : [
    "Machine Data"
]
categories : [
    "Programming",
    "Big Data"
]
---

# Machine Data Platforms

There are two known platforms for machine data, Splunk and Elastic Stack, let's do some research...

## The cost of the platforms

Splunk is great but the price tag is not that great, Elastic Stack is Open Source but some of the Enterprise features and Advanced Analytics capabilities are licensed on X-Pack under a paywall, can we get around some of these capabilities, like security using other Open Source solutions?

## Elastic Stack

### Elastic Stack Security plugins

The Search Guard Community edition provides the needed security features that we need for the Elastic Search cluster for free, node-to-node encryption, authentication and authorization, we need to install it:

https://github.com/floragunncom/search-guard

Community Edition  (Free)

* Full data in transit encryption
* Node-to-node encryption
* Certificate revocation lists
* Role-based cluster level access control
* Role-based index level access control
* User-, role- and permission management
* Internal user database
* HTTP basic authentication
* PKI authentication
* Proxy authentication
* User Impersonation


