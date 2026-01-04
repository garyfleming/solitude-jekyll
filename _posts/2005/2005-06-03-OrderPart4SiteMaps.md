---
id: 570
title: 'Order, Part 4: Site Maps'
date: 2005-06-03T18:58:41+00:00
author: Gary Fleming
excerpt: Google add a freshness extension.
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20050603185841
permalink: /Archives/2005/06/03/OrderPart4SiteMaps/
---
Google, in an interesting move, have released the [Sitemaps protocol](https://www.google.com/webmasters/sitemaps). Each sitemap contains information about what <acronym title="Uniform Resource Locator">URL</acronym>s have changed, how often they are likely to change, when the last change took place and how important that URL is relative to the rest of your site. The purpose? To increase crawler coverage and freshness by having web masters do the leg work of notifying them of new pages.

There are currently limits on how big a Sitemap can be (50000 entries or 10Mb), and how many sitemaps one site is allowed (1000), but they are far larger than most people will need at the moment. I&#8217;d imagine the 10Mb file size is going to be the real limit of the two.

I was going to rant about how this is Atom/<acronym title="Rich Site Summary">RSS</acronym> with some added importance functionality (stripped of content). In fact it seems silly to create a new format when either of those formats would have done and kept the file sizes down, with only recently updated items having to appear. However, it seems that Google are allowing, in addition to their own format, text files of URLs (one per line), RSS 2.0, Atom 0.3, and another standard that is apparently used by libraries. Good work.

The smart money says that search engine optimisation companies will be gaming this within the month (depending on how much Google actually end up using the system), Atom 1.0 support will be included once the spec gets finished, someone will suggest adding the value information into the core Atom spec or it will appear as an extension soon after, and WordPress et. al. will be adding support fairly soon.