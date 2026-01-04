---
id: 368
title: Abstraction Gone Too Far
date: 2003-05-04T23:42:20+00:00
author: Gary Fleming
excerpt: "Abstraction is taking us away from what's useful"
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20030504234220
permalink: /Archives/2003/05/04/AbstractionGoneTooFar/
---
There&#8217;s a moderately old article called [&#8220;Don&#8217;t Let Architecture Astronauts Scare You&#8221;](http://joelonsoftware.com/articles/fog0000000018.html) that I was thinking about recently.

A lot of programming languages allow for classes, generic classes and beyond. In the real world, companies insist on using object-oriented programming. Why? So they can re-use objects and methods at a later date. Now, outside of the codebase that the objects were originally created for, how often do you think they&#8217;re used? That&#8217;s right: close to nil.

Now, why have I been thinking about it recently? Because I&#8217;m being forced to use &#8220;generic classes&#8221; <acronym title="Also Known As">AKA</acronym> &#8220;one layer of abstraction too far&#8221;. The chances of reusing a generic procedure in the real world? Absolutely nil. The things are too generic (you can basically only do assignment operations on them) to be useful for anything.

Abstraction is all well and good, but only if there is actually a need for it rather than when it could be implemented (i.e. all the time).