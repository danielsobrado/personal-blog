

---
author: "Daniel Sobrado"
title: "Introduction to Outlier detection"
date: 2020-08-02T15:30:02+04:00
draft: false
image: https://i.imgur.com/eX81mfE.png
categories : [
	"Data Science"
]
type: post
---

As the enterprise moves to real-time and streaming, it gets more important to identify issues fast, ideally, before the final user gets impacted.

Sometimes unexpected changes can be easily identified by applying simple rules like de-duplication, missing values thresholds etc.. 

But many other times, subtle changes can have significant consequences, and we cannot have rules for each scenario.

Anomaly detection is a technique of machine learning frequently used for this purpose. The main challenge is to avoid false-positives.

Anomalies in one area can affect other areas, and expected changes in systems can generate false-positive anomalies.

The usual way to identify anomalies is to create a lot of dashboards and reports and to have people monitoring them. This method isn't scalable.

Setting alerts if values go above or below thresholds can be misleading as there are too many exceptions. Too many alerts can become a burden quickly. Finding anomalies by setting thresholds is impractical.

Another method is to have a holistic view of the system and to focus on the final results.

We know that the final user/customer needs to have some KPIs that must be relatively stable. We know that the intermediate systems that derive these final KPIs can evolve and change. And the sources that we feed to them have an impact as well.

We can correlate all the sources, intermediate steps, and final outputs.

This technique will allow us to have better filters for false positives, that will helps us identifying significant outliers while avoiding most false positives at any stage of the workflow.