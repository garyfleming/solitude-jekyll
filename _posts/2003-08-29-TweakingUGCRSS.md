---
id: 214
title: Tweaking UGC RSS
date: 2003-08-29T20:49:43+00:00
author: Gary Fleming
excerpt: I tweaked my UGC RSS feed provider
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20030829204943
permalink: /Archives/2003/08/29/TweakingUGCRSS/
---
I tweaked my [UGC <acronym title="Rich Site Summary">RSS</acronym> feed creator](http://solitude.vkps.co.uk/Code/UgcRss/) to include a few cinemas that I apparently missed. It should now cover every UGC cinema in the UK and Ireland. While I was at it, I also added information about the director and actors in each film to the description (if you want a plot synopsis, just follow the link on each item).

I also was about to change the mime-type from `text/xml` to `application/rss+xml`, but to do that I&#8217;d need to generate a link to the feed, rather than take the user straight to the feed. This is, of course, pretty easy to do. Unfortunately, I&#8217;m knee deep in coding something else, so it&#8217;ll have to wait.