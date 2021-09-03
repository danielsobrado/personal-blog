---
linktitle: "Typescript Essentials - 1"
title: "Typescript Essentials - 1"
image: https://i.imgur.com/prRJ5hl.png
date: 2021-04-05
author: "Daniel Sobrado"
tags : [
	"Typescript"
]
categories : [
	"Programming"
]
type: post
---

### What is Typescript?

Typescript is a language created by Microsoft that is transpiled into Javascript. It is a superset of Javascript, which means that is compatible with it.

It gives additional features over Javascript, mostly about quality, object-oriented programming and error management. More errors are thrown at compile time instead of runtime.

Static Types is one of the main functionalities in Typescript, but it is completely optional.

There is no runtime for Typescript, it needs to be converted into Javascript to be executed.

#### Why do I need to learn Typescript?

Modern web development is leaning towards React and Angular to a great extent.

The latest polls say that more than half of React developers are using Typescript, even if you don't use it, you'll find many examples and components in Typescript.

Angular is tightly coupled with Typescript.

Javascript itself is evolving to capture a lot of the functionality in Typescript.

Typescript includes most of the functionality of ES6 and ES7 like class and arrow functions.

You will get a more robust code, fewer bugs, more predictable and as it is increasingly popular you'll find many examples and codebases in Typescript, it is becoming a must on the front-end space.

#### Install Typescript

We need node installed, we just need to type to install typescript globally:

``` npm install -g typescript ```

If we want to compile a typescript to javascript we need to do:

``` tsc example.ts example.js ```

The second parameter is not required if we just want the same filename with a different extension.

We can have a daemon process watching for changes in the file to recompile the ts file constantly by using:

``` tsc example.ts -w ```

The tsconfig.json file is used to configure how Typescript works:
* You can create the tsconfig.json file by using ``` tsc --init ```
* Enable sourceMaps for debugging.
* Define outDir and rootDir to tell the compiler where to find your typescript files and where to place the generated javascript outputs.
