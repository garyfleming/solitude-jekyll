---
id: 175
title: No More Expat
date: 2003-04-04T23:21:38+00:00
author: Gary Fleming
excerpt: Expat gets the boot from Finetto
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20030404232138
permalink: /Archives/2003/04/04/NoMoreExpat/
---
As of today, this site no longer uses expat-style parsing of the <acronym title="eXtensible Mark-up Language">XML</acronym> files that make up the back-end of the site. Instead, it now uses a convoluted (but much faster) tree-come-element-value-pair-type parser.

What does this mean for you, my fine readers? Not a lot. Other than that the layout of entries can be changed much faster than before. Everything is now separated from everything else: Content, Mark-up, meta-data, style, templates. They all exist separately.

Actually, if you look closely, you&#8217;ll notice that the date for each entry is part of the heading for that entry, rather than being next to it.