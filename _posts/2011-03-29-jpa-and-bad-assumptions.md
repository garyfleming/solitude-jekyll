---
id: 13681
title: JPA and Bad Assumptions
date: 2011-03-29T19:50:06+00:00
author: Gary Fleming
layout: post
guid: http://solitude.vkps.co.uk/?p=13681
permalink: /Archives/2011/03/29/jpa-and-bad-assumptions/
categories:
  - Uncategorized
---
I made a bad assumption about how JPA (with Hibernate) works a while ago, that came back to bite me recently. For a long time, I&#8217;d assumed that if you have an `@Column` annotation with a name attribute, that name would always be the name that gets used to match the field to a DB column i.e. `@Column(name="someName")` would always resolve to the DB column &#8220;someName&#8221;.

I was very much mistaken in that assumption.

When using Hibernate (and possibly other JPA implementations, I&#8217;ll need to check), it turns out that name just replaces the field name as it goes through the normal renaming process. That is, the name is still subject to all of Hibernate&#8217;s naming strategy code.

By default, that means that when using the ImprovedNamingStrategy (as most people are), &#8220;someName&#8221; becomes &#8220;some_name&#8221;. This is definitely a more db-like name, but took me a little by surprise when I saw this happening in someone&#8217;s code.

The lesson: never assume anything.