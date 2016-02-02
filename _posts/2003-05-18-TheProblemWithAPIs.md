---
id: 212
title: The Problem With APIs
date: 2003-05-18T23:07:04+00:00
author: Gary Fleming
excerpt: "Why I don't yet support APIs"
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20030518230704
permalink: /Archives/2003/05/18/TheProblemWithAPIs/
---
There&#8217;s been a lot of talk about <acronym title="Application Program(ming) Interface">API</acronym>s recently. Most of it can be summed up reasonably by [Evan&#8217;s post on the API situation](http://www.evhead.com/archives/2003_05_10_archive_default.asp). For anyone bringing a <acronym title="Content Management System">CMS</acronym> into the world around now, it&#8217;s a bit of a nightmare situation.

Everyone ([Dave](http://www.scripting.com) and [Evan](http://www.evhead.com) &#8211; the brains behind the two big APIs &#8211; included) wants a singular but fully functioning API to hook into. To be able to write once and only once, and forget about it for the near future. Currently, it isn&#8217;t possible.

Rather than get into the politics and technical reasons behind the split; I thought I&#8217;d say that as the developer of a new CMS, I currently implement neither API. I will, some day, implement one but as of yet haven&#8217;t. Why?

First of all, I&#8217;m the only person to use a remotely new version of Finetto (the aforementioned CMS). I&#8217;ve given other sites stable working versions (Finetto was actually written for a site that I was working on, where the owners didn&#8217;t have the knowledge to update manually), and it _will_ be used on other sites (once I get a rather unique feature finished). But for now, it&#8217;s really just me, and I&#8217;m happy using the web interface for it. I know it&#8217;s secure enough to let me log-on from other computers without compromising anything.

Secondly, the browser window is the lowest common denominator of any net capable application. I&#8217;ve checked this from a number of devices, and they all allow access through the web interface (hooray for somewhat functional <acronym title="eXtensible Markup Language">XML</acronym> parsers embedded in devices). This kind of interoperability puts API interoperability further down the list. More devices support browsers than custom interfaces.

Admittedly, another reason is that there are 2 problems with Finetto stopping me implementing an API. One is trivial, and I could write code for in 5 minutes. I don&#8217;t because there are things much higher on my priority list (non-crufty <acronym title="Uniform Resource Locators">URL</acronym>s and a comment system have been on the list for too long to ignore now). The other reason is slightly more complicated, but I have the necessary script to remedy it, I just need a lot more time than I have to do so.

Finally, because there&#8217;s not enough time in the day. I&#8217;m a student. I have exams getting imminently close, a girlfriend, friends to do stuff with, alcohol that needs drunk etc. You get the picture. There&#8217;s not enough time to do all that as there is, without having to weigh up two APIs to implement. If there was one, then maybe, but until summer it&#8217;s just not going to happen.

I don&#8217;t know what the point of this post was if there was any. Hell, I&#8217;ll probably do a [Zeldman](http://www.zeldman.com) and implement an API by this time tomorrow. But perhaps I&#8217;m trying to say prioritise, make sure you do things because _you_ should rather than because everyone else is doing it, and don&#8217;t do drugs, kids.