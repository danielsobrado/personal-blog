---
author: "Daniel Sobrado"
date: 2018-09-28
linktitle: "Spark Introduction Tungsten"
description : "The goal of Project Tungsten is to improve Spark execution by optimizing Spark jobs for CPU and memory efficiency, as opposed to network and disk I/O which are considered fast enough, it's a Spark SQL component that provides more efficient Spark operations by working directly at the byte level."
nomenu:
  main:
    parent: post
next: /post/github-pages-blog
prev: /post/automated-deployments
title: "Apache Spark: Introduction to project Tungsten"
weight: 10
image: https://i.imgur.com/Ous3FT6.jpg
categories : [
    "Big-Data"
]
tags : [
    "Spark"
]
type: post
draft: true
---


## Introduction

Project Tungsten is available from Spark 1.4, Spark 2.x comes with the second generation of the Tungsten engine.

Tungsten is a compiler that applies to queries and generates optimized bytecode at runtime.

> Tungsten compiles your queries/stages into single bytecode JVM function that improve CPU efficiency and gain performance.

This is one of those things that you could live without knowing about it and still do fine in Spark programming, but is extremely interesting and can be useful for advanced optimizations and to understand the insides of Spark.

You never know if you'll find tugnsten useful for your next project!

## Using Tungsten

Tungsten is enabled by default, you can disable it if you want to compare the performance impact:
```
$ spark-shell --conf spark.sql.tungsten.enabled=false
```

And enable it again:
```
$ spark-shell --conf spark.sql.tungsten.enabled=true
```

## Thomas Neumann’s seminal VLDB 2011 paper

See: <a href="https://blog.acolyer.org/2016/05/23/efficiently-compiling-efficient-query-plans-for-modern-hardware/" target="_blank">Efficiently compiling efficient query plans for modern hardware</a>

## Eliminating virtual function dispatches

## Intermediate data in CPU registers

## SIMD

## Whole Stage Code Generation
