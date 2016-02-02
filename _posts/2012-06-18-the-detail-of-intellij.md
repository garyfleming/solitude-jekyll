---
id: 15614
title: The Detail of IntelliJ
date: 2012-06-18T18:53:43+00:00
author: Gary Fleming
layout: post
guid: http://solitude.vkps.co.uk/?p=15614
permalink: /Archives/2012/06/18/the-detail-of-intellij/
categories:
  - Coding
---
Having only really dabbled with it before, I&#8217;ve been pleasantly surprised now that I&#8217;m using [IntelliJ IDEA](https://www.jetbrains.com/idea/) almost full-time. It&#8217;s not that it has a single feature that is mind-blowingly ahead of the competition; it&#8217;s all the little details that just make it a pleasure to use.

My first &#8220;That&#8217;s Really Nice&#8221; moment was when working with some Spring beans and it understood all of the links between the code and the config. If I hadn&#8217;t added a referenced bean, it would tell me. If I type in a bean&#8217;s class attribute, it knows that it maps to a Java class and can auto-complete that for me. If you pull in a property file using Spring&#8217;s PropertyPlaceholderConfigurer support, it parses the property file so it can auto-complete placeholder usages, give you a hint as to the current value (so you know you have the correct property), and tells you when you&#8217;ve typed in a placeholder it doesn&#8217;t yet recognise (usually because you forgot to add it to the property file).

The embedded language fragment support, though, is really something else. If you have a Java class that contains a String with some SQL in it, Eclipse will treat it as a String and that&#8217;s that. IntelliJ goes a step further. Sure, it&#8217;s a String, but it can understand that it&#8217;s SQL (or JPQL, HQL or whatever) and do syntax checking for you. It&#8217;ll auto-complete keywords for you. Heck, if you tell the IDE about your data-source (presumably a relational DB in this case), it&#8217;ll store a bunch of metadata about that data source, and use that to aid you too; by extending the auto-complete to table names, for example.

There are a bunch of other great features in there but, as I say, it&#8217;s not the big, shouty features that make it great. It&#8217;s the attention to detail in making coding that much easier that makes it such a pleasant experience to work with. I can&#8217;t see myself going back any time soon.