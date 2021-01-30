---
description: "Let's take a look to some concepts on distributed systems and concurrency."
author: "Daniel Sobrado"
date: 2015-03-15
linktitle: Concepts on Concurrency
title: "Concepts on Concurrency"
image: https://i.imgur.com/ewEDGca.jpg
tags : [
    	"AngularJS",
	"Concepts"
]
categories : [
	"Programming"
]
---

## Introduction

Let's take a look to some concepts on distributed systems and concurrency.

## Concurrency vs Parallelism

Concurrency means that several tasks run during the same period of time, the have overlapping timelines, this doesn't mean that they need to run exactly at the same time, concurrent tasks can run in the same processor, taking turns to exectute parts of their code.

Parallelism means simultaneous execution, like multithreading in a multicore system, each processor is executing a task at the same time.

## Asynchronous vs Synchronous

The `ng-app` directive starts the bootstrap the angularJS application, this is the first step in the lifecycle and the initializations happen at this point.

<pre><code class="language-css">
    <html ng-app="ourApp">
    ...
    </html>
</code></pre>

## Non-bocking vs Blocking

<pre><code class="language-javascript">
var app = angular.module('ourApp', ['ngRoute', 'ngResource']);
</code></pre>

> This is our entry point in the application.

## Race Condition

