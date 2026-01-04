---
id: 421
title: Fixed Ugc Rss Feeds
date: 2003-11-27T23:45:21+00:00
author: Gary Fleming
excerpt: The problem that cropped up last week
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20031127234521
permalink: /Archives/2003/11/27/FixedUgcRssFeeds/
---
After the UGC recently changed their pages to a more irregular format (in terms of code), the [screen-scraped <acronym title="Rich Site Summary">RSS</acronym> feeds](/Code/UgcRss/) I made from them fell apart.

I finally got a chance to have a look at the code tonight and was terrified that it might be part of the main scraping that was going wrong (it&#8217;s fragile, very fragile), rather than the postprocessing.

Thankfully, the problem was that rather than leave directors and actor details blank (as previously) they now remove the line entirely. This actually reduces the amount of code I was using to parse out the details I didn&#8217;t want.

In short, there was a problem and I&#8217;ve now fixed it. Please resume enjoyment of the UGC RSS feeds as long as they last before breaking again (such is the perilous nature of screen scraping).