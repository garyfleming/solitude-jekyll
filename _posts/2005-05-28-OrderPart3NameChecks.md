---
id: 569
title: 'Order, Part 3: Name Checks'
date: 2005-05-28T23:16:45+00:00
author: Gary Fleming
excerpt: How noindex fucks your pagerank.
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20050528231645
permalink: /Archives/2005/05/28/OrderPart3NameChecks/
---
Up until six months ago, I wasn&#8217;t living the dream that every Internet-savvy person with the slightest hint of narcissism has wanted. That&#8217;s right: I wasn&#8217;t the top result on Google for my own name. A brief and pointless tale as to why follows.

As Solitude came together, I was looking at different techniques to ensure that search engines got the right content from it. It seemed that from my past experiences of searching on other peoples blogs, the front page inevitably turned up, with the post in question have long scrolled off of it. Many sources suggested that the solution to this was to use the `"noindex,follow"` setting in your robots meta tag directive. And so I did.

That was fine, except for the fact that people link to your homepage when using your name. Because the homepage was set as `"noindex"` it didn&#8217;t get a Google PageRank associated with it (rightly). Rather a problem. In the end, the solution was simple. Just switch it back to allow indexing of the main page. Google is smart enough now to either show a permalinked page in results, or have the permalinked page as a sub-entry of the front page link.

This post, of course, means that my site will inevitably disappear from a search for my name. Such is life.