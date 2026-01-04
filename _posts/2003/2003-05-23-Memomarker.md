---
id: 497
title: Memomarker
date: 2003-05-23T12:18:01+00:00
author: Gary Fleming
excerpt: A very interesting way of creating bookmarks
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20030523121801
permalink: /Archives/2003/05/23/Memomarker/
---
<cite>Philipp Lenssen</cite> gives us an interesting way to bookmark information: [the MemoMarker](http://blog.outer-court.com/memomarker/). It tries to get around the fact that <acronym title="Uniform Resource Indicator">URI</acronym>s do change (despite the <acronym title="World Wide Web Consortium">W3C</acronym> saying that [Cool URIs Don&#8217;t Change](http://www.w3.org/Provider/Style/URI.html)).

It does this by looking at a page and determining what the longest words are. The logic is that these are generally the most unique words on a page, when taken as a whole. It then creates a [Google](http://www.google.com) search string using those words. In the end, when your site gets indexed by the googlebot, you can use the search string (or memomark) to find moving content in the google cache.

The only problem is that the googlebot takes roughly a month to update its index, so the links are absolutely useless until then.