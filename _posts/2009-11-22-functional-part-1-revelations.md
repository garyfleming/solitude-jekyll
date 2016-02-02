---
id: 882
title: 'Functional, Part 1: Revelations'
date: 2009-11-22T20:36:31+00:00
author: Gary Fleming
layout: post
guid: http://solitude.vkps.co.uk/?p=882
permalink: /Archives/2009/11/22/functional-part-1-revelations/
categories:
  - Uncategorized
---
Since Java and the JVM are getting [proper closure support](http://puredanger.com/tech/2009/11/18/closures-after-all/ "Closures for Java"), now is as good a time as any for me to dump some thoughts about functional programming onto the site. I&#8217;ve got a few posts in mind, but I imagine this will be a somewhat sporadic series. Anyway&#8230;

When I was first introduced to functional programming, as part of my degree course, I didn&#8217;t really understand it. Not that I didn&#8217;t do well at the course, it was one of my strongest modules that year, but I really didn&#8217;t understand the benefits and potential. It did seem unusually neat, producing fairly compact code (we were taught Haskell, unsurprisingly), but also fairly burdensome. Avoiding side-effects and assignment was just too foreign, and I didn&#8217;t have enough real-world experience to really get the point. So, for a few years, I just forgot about it and got on with programming in other languages (Java, C, PHP, JS, etc).

Skip forward a few years, and as a reasonably experienced coder, I often found myself frustrated at the languages I was using. I would always try to make my code as neat and compact as I could, trying to minimise any wasteful re-use. If two classes were vaguely similar, then I&#8217;d look to find the common elements and make the differences abstract. Joel Spolsky talked about this [when covering Javascript](http://www.joelonsoftware.com/items/2006/08/01.html "Article on functional programming in Javascript.").

That&#8217;s all well and good but without certain key language features you can only get so far. The very constructs that hold the language together (loops, ifs, locks etc) are often the part that are either impossible or very difficult to abstract. This revelation brought me back to functional programming.

I now realise that the core of functional programming is freeing yourself from the constraints of the language, using different higher-order functions to express yourself more clearly and succinctly. A necessary consequence of this is lack of side-effects, and that&#8217;s a GOOD thing.

Stick around, I&#8217;ll be covering a number of libraries and ideas that make life simpler for the functional programmer.