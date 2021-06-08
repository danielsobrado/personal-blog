---
linktitle: "Functional programming in Java: Functional Interfaces"
title: "Functional programming in Java: Functional Interfaces"
image: https://i.imgur.com/prxxbp9.jpg
tags : [
    "Java",
	"Functional Programming"
]
categories : [
	"Programming"
]
type: post
draft: false
---

### Introduction

With Java 8, Oracle introduced functional programming in the language, this is achieved by using Functional Interfaces.

### Functional Interfaces

The main difference between a Functional Interface (Also called SAM interface) and an ordinary interface is that it can only have one abstract method, while and ordinary one can have many.

#### How to create a Functional Interface

If we create an Inteface with only one abstract method Java will consider it as a Functional Interface: 

```
public interface FunctionalInterfaceTest
{
    public int function1(int a);
}

```
But if we add additional abstract Methods it will lose its status of Functional Interface: 

```
public interface NonFunctionalInterfaceTest
{
    public int function1(int a);
    public int function2(int a);
}
```

To avoid doing this by mistake we can use the optional @FunctionalInterface annotation that is available since Java 8.

```
@FunctionalInterface
public interface AnnotatedFunctionalInterfaceTest
{
    public int function1(int a);
}
```

If you try to call your Interface "FunctionalInterface", you'll annotation will give an error.

You can test this Functional Interface:

```
public class TestFunctionalInterface {
	
    public static void main(String args[])
    {
	    int a = 2;
	    
	    AnnotatedFunctionalInterfaceTest s = (int x)->x*x;
	
	    int ans = s.function1(a);
	    System.out.println(ans);
    }
}
```

#### Builtin Functional Interfaces 

The java.util.function package in Java 8 contains various builtin functional interface, some examples are:

**Predicate**: The Predicate interface has an abstract method test that gives a Boolean value, as a result of the specified argument:

```
public interface Predicate
{
   public boolean test(T  t);
}
```
**BinaryOperator**: The BinaryOperator interface has an abstract method apply which takes two arguments and returns a result of the same type:
```
public interface BinaryOperator 
{
     public T apply(T x, T y);
} 
```
**Function**: The Function interface has an abstract method apply which accepts an argument of type T and returns a result of type R. 
```
public interface Function 
{
   public R apply(T t);
}
```

You can see how to to use the predicate Functional Interface:

```
public class TestPredicateInterface {
	
	    public static void main(String args[])
	    {
	  
	        List<String> hello =
	            Arrays.asList("Hello","world", "my", "friend!");
	  
	        Predicate<String> p = (s)->s.contains("l");
	  
	        for (String st:hello)
	        {
	            if (p.test(st))
	                System.out.println(st);
	        }
	    }
	}
```

#### Method overwritting and overloading

Method overwriting is ignored by interfaces, if we use the same signature as the methods in the object class, these won't be counted against the number of abstract methods available in the class. (e.g. toString, equals and hashCode)

Method overloading does count against the number of abstract methods, the method signature is important!

You can find these examples and more on my github: [Github Lambdas](https://github.com/danielsobrado/java-projects/tree/main/lambdas)
