---
author: "Daniel Sobrado"
date: 2019-02-10
title: "Precedence of properties"
description : "When starting with Spark jobs, one of  the most common tasks is to understand how to finetune properties. When your codebase  grows and you need some tools and you write some decent amount of code, you are probably going to use a proper. You might find that your properties are not being taken into account."
weight: 10
bg_image: images/background/keyboard.jpg
image: https://i.imgur.com/HXoTjv8.png
categories : [
    "Big Data"
]
tags : [
    "Spark"
]
type: post
---

## Proper Properties

When starting with Spark jobs, one of  the most common tasks is to understand how to finetune properties.

It is critical to define the right properties for your job, to avoid it to fail, or to take too long, at the same time you don't want to be too greedy with the resources of your cluster, some might complain!

## The problem

When your codebase  grows and you need some tools and you write some decent amount of code, you cannot just rely on an editor to edit the code and launch the job from the command line.

You are probably going to use a proper IDE like Eclipse-Scala or IntelliJ and you are used to hit the run key combination to launch your script.

You might find that your properties are not being taken into account.

### **Order of Property Precedence**

You can set some environment variables for standalone execution by using: (e.g. in `spark-env.sh`)

    SPARK_EXECUTOR_MEMORY=16g

You can also set the `spark-defaults.conf`:

    spark.executor.memory=16g

But these solutions are hardcoded and pretty much static, and you want to have different parameters for different jobs, however, you might want to set up some defaults.

The best approach is to use `spark-submit`:

    spark-submit --executor-memory 16G 

But your problem comes from changing your variables programmatically.

The problem of defining variables programmatically is that some of them need to be defined at startup time if not precedence rules will take over and your changes after the initiation of the job will be ignored.

> The amount of memory per executor is looked up when SparkContext is created.

And

> once a SparkConf object is passed to Spark, it is cloned and can no longer be modified by the user. Spark does not support modifying the configuration at runtime.

See: [SparkConf Documentation][1]

You need to change the property before the `SparkContext` is created, then running your iteration, stopping your `SparkContext` and changing your variable to iterate again?

    import org.apache.spark.{SparkContext, SparkConf}
    
    val conf = new SparkConf.set("spark.executor.memory", "16g")
    val sc = new SparkContext(conf)
    ...
    sc.stop()
    val conf2 = new SparkConf().set("spark.executor.memory", "24g")
    val sc2 = new SparkContext(conf2)

You can debug your configuration using: `sc.getConf.toDebugString`

See: [Spark Configuration][2]

> Any values specified as flags or in the properties file will be passed on to the application and merged with those specified through SparkConf. Properties set directly on the SparkConf take highest precedence, then flags passed to spark-submit or spark-shell, then options in the spark-defaults.conf file.

You'll need to make sure that your variable is not defined with higher precedence.

You need to understand the precedence order:

* conf/spark-defaults.conf
* --conf or -c - the command-line option used by spark-submit 
* SparkConf

Just make sure that your properties are all setup before creating the SparkContext, there are some SparkSQL properties that you can change at run-time, lets discuss that in another post.


[1]: https://spark.apache.org/docs/latest/api/scala/#org.apache.spark.SparkConf
[2]: https://spark.apache.org/docs/latest/configuration.html