
---
author: "Daniel Sobrado"
title: "ACID"
date: 2016-05-15
draft: false
image: https://i.imgur.com/2tRFBca.png
tags : [
    "Data"
]
categories : [
	"Programming"
]
type: post
---

In 1983, Andreas Reuter and Theo Härder published the paper “Principles of Transaction-Oriented Database Recovery”, and minted the term ACID.

* **Atomicity**: Within a transaction, every step must succeed or fail.
* **Consistency**: Once a transaction completes, all rules or constraints must be consistent. 
* **Isolation**: Transactions cannot see the intermediate state of other transactions.
* **Durability**: Once a transaction completes, it is persisted. The data cannot be lost or undone from memory.
<br>
There are different ways of achieving this, one is called "*Pessimistic concurrency*", when you need to acquire a lock to access the data.

Another one is called "*Optimistic concurrency*", everyone gets a copy of the data and does with it, whatever they want. If there are conflicts we can rollback the transactions or apply rules for the resolution.

Optimistic concurrency uses timestamps to know when was the last time the data was in a stable state, ACID compliant.