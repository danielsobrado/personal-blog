

---
author: "Daniel Sobrado"
title: "Commodities"
date: 2017-04-22T15:30:02+04:00
draft: false
image: https://i.imgur.com/mVbGpYW.png
categories : [
	"Investing"
]
type: post
---

#### Introduction to commodities

Commodities are type of assets that are assets use in the industry as inputs of productions or goods, they are multiple type of commodities like precious metals, construction materials, food, energy etc...

Some commodities are seasonal, other commodities cannot be stored easily like electricity and most of them they have a cost of storage.

#### Non-storable commodities

Commodities like electricity, cannot be stored, at least for common market pricing purposes. 

> Its derivatives cannot be hedged, by holding the underlying commodity.

The pricing of these commodities depends on demand and supply fundamentals, we can assume that this is a Markovian process.

There is successful research on the study of electricity markets, that takes into consideration; the demand for electricity, the available capacity and fuel price, assuming that these factors evolve in a Markovian way.

When the load is low, the prices are fairly constant, but when they approach the capacity threshold prices spike.

#### Storable commodities

Commodities that need to be stored are more complex to price. 

* There are intertemporal dependencies. 
* Storage involves an opportunity cost. 

They require to solve recursively a dynamic programming problem, to determine efficient  allocation of resources, and to determine the equilibrium evolution of prices.


If I own a commodity like oil, I can sell it today for consumption or store it for consumption tomorrow or later. 

The opportunity cost of consumption today is the value of the crude tomorrow. 

I must also pay a storage cost; and include the interest I could earn on that money.  (Net Present Value)

The value of the commodity in the future is uncertain. 

The price tomorrow depends on how much I consume then, which depends on how much I store tomorrow, which depends on my estimate of the value of the commodity the day after tomorrow, which depends on my estimate of its price the day after the day after tomorrow, and so on.

This requires an article on its own.

#### Contango and Backwardation

Oil prices usually are in Contango or Backwardation, which means that Contango futures prices with longer maturities are more expensive than those maturing earlier.

It depends on multiple factors like inventory levels, storage costs, transportation, political issues and expectations.

Having understood this, we can move and derive the concept of "convenience yield", which is the benefit of holding the physical commodities over the futures contracts.

#### Spark Spread

The Spark spread is related to the difference between the price of electricity and the fuel utilised to produce it, usually natural gas.