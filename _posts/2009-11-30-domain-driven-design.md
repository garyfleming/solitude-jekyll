---
id: 917
title: Domain-Driven Design
date: 2009-11-30T21:50:11+00:00
author: Gary Fleming
layout: post
guid: http://solitude.vkps.co.uk/?p=917
permalink: /Archives/2009/11/30/domain-driven-design/
categories:
  - Uncategorized
---
There is a fairly tangible link between the language used to describe a software system and how easy it is to understand, maintain, and expand that system, for both technical and non-technical people. To be clear, when I say language I don&#8217;t mean the programming language of choice (Java, C, Python etc): I mean the terms used to describe it.

If all participants in the design process (again, technical and non-technical) can agree on a set of terms for each component and always talk about those components and their interactions in the same way, it can greatly ease understanding. There&#8217;s a lot more to it than that, but this is basically [Domain-Driven Design](http://domaindrivendesign.org/).

I&#8217;d been thinking about the general principles of this a number of years ago, when I read a great article about the Guardian redesign. It took me a while to dig out the link but it&#8217;s worth a read: [Domain-Driven Design in an Evolving Architecture](http://www.infoq.com/articles/ddd-evolving-architecture). It&#8217;s definitely worth reading to get a feel for the issues around and power of the DDD.

It occurred to me recently that the reason that many vendor tools take a significant amount of effort before either making sense or before you realise that they&#8217;re awful is that they&#8217;re written in someone else&#8217;s domain, one in which you were not privy to the design of and which is usually only documented in terms of the things that it has already been used to do. That&#8217;s a mistake.

The empowering part of good documentation for a system is in first describing exactly what it is and how it is structured, before describing what it can do; by focusing on the domain, rather than the outcome.

With this information in hand, it should become clearer much sooner whether the domain of the tool is compatible with the domain of your problem-space. This is probably why Spring has been such a successful framework in the Java world: it goes to great lengths to explain exactly what each part is, and helping you understand how it fits under your own domain.