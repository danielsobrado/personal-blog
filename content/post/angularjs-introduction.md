---
description: "AngularJS is a Java script based front end development framwork maintained by Google. Very mature and stable is one of the preferred choices for Single Page Applications."
author: "Daniel Sobrado"
date: 2015-02-28
linktitle: AngularJS Introduction
next: /tutorials/github-pages-blog
prev: /tutorials/automated-deployments
title: "AngularJS: Introduction"
image: https://i.imgur.com/ewEDGca.jpg
tags : [
    "AngularJS",
	"Javascript"
]
categories : [
	"Programming"
]
---


## Introduction

All started when I started developping some quick reconcialition tool for the bank´s Product Control team, someone said: "*Hey Daniel, can you help us with this? Take this and that and apply this rules and give us the results on something we can visualize, it is too much data for excel!*

I love solving issues for my business partners and I immediately started rolling my sleaves, things look simple and easy at the begining but the reality sometimes is different, I had a to use a large database to transform the data, this triggered a proper project and many gobernance procedures, like authentication, authorization, chinese walls, user management etc.

I had the need to build a front end where the users can login, and I was building all in-house, sometimes the quickest solution is the one you can build yourself without vendors, support SLAs etc... This was one of these situations, but.. 

I haven´t touched any front-end from ages, hiring a Front-end/Javascript developer looked overkill, so I took one of these nice looking open source single page administration pages that are nowadays so common.

This was built in AngularJS so I decided that it was a good opportunity to get some skills, anyway I "*only*" had to write some controllers on top of the main prject, right?

## AngularJS basic concepts

The basic concepts inAngularJS are models, views and controllers, as in the MVC design pattern, if you know essential javascript and html/css you can start playing straight away.

There are many other topics that are complementary like bootstrap, jquery, webpack etc.. You don´t need to know them all to start doing some work.

We´ll use Karma and Protractor for testing and to do that we´ll require to know the basics on nodejs and npm.

Of course, this is only front-end development, this needs to be tied up with a back-end, we´ll discuss that in future articles.

## 1. Bootstraping

The ng-app directive starts the bootstrap the angularJS application, this is the first step in the lifecycle and the initializations happen at this point.

<pre class="prettyprint lang-html">
    <html ng-app="ourApp">
    ...
    </html>
</pre>

## 2. Modules

<pre class="prettyprint lang-js">
var app = angular.module('ourApp', ['ngRoute', 'ngResource']);
</pre>

> This is our entry point in the application.

## 3. Dependency injection

## 4. Routes

## 5. Templates

Also known as partials, they are defined with `<div ng-view>`, 

## 6. Views

The view shows the data from the models, the logic for the view is available on the controller.

> The presentation logic should be placed in the views, not in the controllers. 
> 

## 7. Expressions

## 8. Models

## 9. Data binding

## 10. Controllers

Controllers have two main functions, to initiate the model and to execute the business logic associated with that view.

Controllers will call REST API functionality for the business logic implemented in the back-end, there is a trade off between implementing business logic in the front-end and back-end.

The logic in the front-end it is fast to execute and doesn´t need network communication, but it can be hacked, syntactic validations are usually done at both levels.

In the back-end we´ll secure the logic that we don´t want to be exposed, always taking into consideration that the response time should be sensible.

## 11. Services

Services are singleton objects that provide generic functionality, they are not specifically tied to a view.

## 12. Scope

## Conclusion

We´ve reviewed the very basic blocks of AngularJS, we´ll spend more time with each topic.

In this case I decided to build the backend using Java and Spring MVC for the REST calls, we´ll see all this in the following articles.