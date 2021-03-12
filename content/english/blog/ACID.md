
---
author: "Daniel Sobrado"
title: "ACID Properties"
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

All changes to data are performed as if they are a single operation:

* **Atomicity**: Within a transaction, every step must succeed or fail.
* **Consistency**: Once a transaction completes, all rules or constraints must be consistent. 
* **Isolation**: Transactions cannot see the intermediate state of other transactions.
* **Durability**: Once a transaction completes, it is persisted. The data cannot be lost or undone from memory.

<br> 
There are different ways of achieving this, one is called "*Pessimistic concurrency*", when you need to acquire a lock to access the data.

Conventional models in RDBMS have been based on locking.

There are variants of locking:
Dirty Write (P0): 
Dirty Read (P1): 
Non-repeatable read (P2):
Phantom (P3):
Lost Update (P4): 

The database will perform much more agile if you do not protect yourself from these problems.

You can limit any of the P1, P2 and P3 issues by introducing the transaction isolation levels:
Serializable: (P1, P2 and P3 cannot happen)
Repeatable Read:(P1 and P2 cannot happen)
Read Comitted: (P1 cannot happen)
Read Uncommited: Can see any row not commited. (P1, P2 and P3 can happen)

P0 and P4 [are not part of the original ANSI models](https://www.microsoft.com/en-us/research/wp-content/uploads/2016/02/tr-95-51.pdf) and there are custom propietary isolation levels for this.

Another one is called "*Optimistic concurrency*", everyone gets a copy of the data and does with it, whatever they want. If there are conflicts we can rollback the transactions or apply rules for the resolution.

You assume that reads are much more common than writes, and conflicts are exceptional when there are database modifications. 

Optimistic concurrency uses timestamps to know when was the last time the data was in a stable state, ACID compliant.