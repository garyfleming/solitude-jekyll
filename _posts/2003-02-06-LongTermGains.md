---
id: 139
title: Long Term Gains
date: 2003-02-06T12:53:22+00:00
author: Gary Fleming
excerpt: Reasons why software design is important
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20030206125322
permalink: /Archives/2003/02/06/LongTermGains/
---
When I started making Finetto (the software that runs this site), I didn&#8217;t really plan it out very well. The design brief in my head was:

> Make a <acronym title="Content Management System">CMS</acronym> that doesn&#8217;t need database to work but allows information to be formatted in many different ways.

The obvious solution is to store content on the filing system in an <acronym title="eXtensible Mark-up Language">XML</acronym> format. This is still what I want to do (and have working fine). However, because of a lack of foresight, I didn&#8217;t really think about the potential bottlenecks and scaling problems involved in using the filing system. I just jumped straight into coding.

After a while, I knew that the initial idea would fail whenever I wanted to add new features. So I built a quick add-on system. It basically just loads in a whole bunch of functions and uses them when they&#8217;re called. But, again, I didn&#8217;t really plan it. And now I&#8217;m paying.

I realise now that more structured hierarchial data storage would work much more efficiently (I&#8217;ve tested it) and that an add-on model based around events allows more flexibility and hides the code from the end-user to a greater extent.

So, because I didn&#8217;t design it well in the first place, I&#8217;m having to retrofit huge amounts of code and come up with solutions on the fly. From here on out, I&#8217;m planning everything down to the last detail before starting anything. That way there&#8217;s no hassle.

On a side note though, the new add-on system and storage system (complete with funky caching) are quite advanced. Well worth the hassle to implement.