---
id: 469
title: iBatis And Like
date: 2006-11-19T22:36:13+00:00
author: Gary Fleming
excerpt: How to use the like operator with iBatis.
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20061119223613
permalink: /Archives/2006/11/19/iBatisAndLike/
---
A reminder for myself for the future (and any other people doing Java development): using the `like` operator in [iBatis](http://ibatis.apache.org/). The meta character escaping you need in your <acronym title="eXtensible Markup Language">XML</acronym> is `column like '%'||#property#||'%'`, where `property` property is a bean property in your parameter class.

Also, if you&#8217;re doing everything in your `where` clause dynamically, I would recommend looking at `dynamic` and `isNotNull` tags.