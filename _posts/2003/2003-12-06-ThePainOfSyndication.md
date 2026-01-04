---
id: 234
title: The Pain Of Syndication
date: 2003-12-06T23:27:41+00:00
author: Gary Fleming
excerpt: Mime types and RSS. More fun.
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20031206232741
permalink: /Archives/2003/12/06/ThePainOfSyndication/
---
There are three ways to reasonably serve up <acronym title="Rich Site Summary">RSS</acronym>, listed here in order of preference:

  1. `application/rss+xml`
  2. `application/xml`
  3. `text/xml`

Since the first is the type we say we&#8217;re serving in the link tag (despite that type not being a real MIME type), that is the one we should probably pick to serve our feeds as. The problem is that browsers (rightly) refuse to display `application/rss+xml`. Instead, they try to download it or pass it to another viewer.

This behaviour doesn&#8217;t help someone who doesn&#8217;t know what an RSS feed does (a problem that needs addressed). They will see something they do not understand being downloaded and abort. Not good. To aid in this, it would be nice for the user to see the styled feed ([my RSS 2.0 feed](/Syndication/RSS.rss) already has <acronym title="Cascading Style Sheets">CSS</acronym> styling).

Two thoughts occurred to me: &#8220;Are there any workarounds?&#8221; and &#8220;How are others serving their RSS feeds?&#8221;.

Changing the content-type to `application/xml` fixes the visibility problem, but means that feeds are inconsistent with the link tag. In turn, changing the link tag to suit the new content-type isn&#8217;t feasible. There are dozens of aggregators who need to see `application/rss+xml` in the link tag to do auto-discovery properly.

Step 2 was to see how others serve their feeds. The results were disconcerting, at best. [Jacques Distler](http://golem.ph.utexas.edu/~distler/blog/index.shtml) and [Anne van Kesteren](http://annevankesteren.nl/) both use `text/xml`, [Mark Pilgrim](http://diveintomark.org) uses `application/xml`, and [Sam Ruby](http://intertwingly.net) uses `application/xml` for RSS 0.91 and `application/rss+xml` for RSS 2.0.

Ouch.

In the end, it&#8217;s probably best to settle on the middle option: `application/xml`. Why? It provides visibility, is the parent of the &#8220;correct&#8221; MIME type (if you see these things as hierarchical), and it is a real MIME type.

The situation is hardly ideal, but it&#8217;s the one we have.

As an aside, [my RSS feeds](/Syndication/) now have a new extension (.rss, rather than .xml). I&#8217;ll be doing a transparent redirect for now, in a month or so I&#8217;ll make it explicit, and a month after that I might remove the old style entirely. Please update your subscriptions now to avoid disappointment later.