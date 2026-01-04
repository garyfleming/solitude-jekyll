---
id: 520
title: Misdirection
date: 2005-03-22T12:42:31+00:00
author: Gary Fleming
excerpt: What were Arriva thinking?
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20050322124231
permalink: /Archives/2005/03/22/Misdirection/
---
While checking for information on bus timetables yesterday, [Arriva](http://www.arrivabus.co.uk/) (the main operator in my area) astounded me with some piss poor design.

The left hand-side of their page features a form that allows you to input a town and route number to find information on it. Great. Except that upon submitting the form it doesn&#8217;t just send your information to a page in which results will be returned, or redirect you to the appropriate information. Oh no, that would be far too simple.

Instead, it executes a javascript function using the long since deprecated `javascript:` protocol (you do have JS turned on for something as simple as this, right?), pops-up a small window which does nothing but cause a redirect in your original window and then closes, and then takes you to a results page. Javascript and pop-ups for a _redirect_? What? Don&#8217;t get me started on the crufty <acronym title="Uniform Resource Locator">URL</acronym>s either.