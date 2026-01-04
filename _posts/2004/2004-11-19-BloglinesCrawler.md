---
id: 207
title: Bloglines Crawler
date: 2004-11-19T21:56:59+00:00
author: Gary Fleming
excerpt: The Bloglines crawler is hitting insanely fast
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20041119215659
permalink: /Archives/2004/11/19/BloglinesCrawler/
---
Up until fairly recently, I didn&#8217;t use an <acronym title="Rich Site Summary">RSS</acronym> aggregator. Using my own bandwidth to check so many sites was just hammering my connection, and starting and stopping the application when I needed to reserve the bandwidth was just a pain.

Enter [Bloglines](http://www.bloglines.com). Yes, I&#8217;m late to the party. People have been praising it for months now but I only very recently saw the light. It is an excellent tool: allowing me to check sites quickly when I want to (and not using up much of my bandwidth), keeping unread items up to date no matter which computer I&#8217;m using, and making me far more productive.

Before Bloglines, I was struggling to keep up with about 50 sites regularly. I now easily keep up with around 120. Thoroughly recommended.

Now, I checked my server logs for the first time in months tonight and noticed that a single host had hit my site 2000 times this week. That&#8217;s a hit every 5 minutes from one entity. Investigating a little further made it clear that the one entity was an aggregator: the bloglines aggregator.

Now, Solitude is not a high-throughput site. I attempted to update once a day, but it&#8217;s usually more like once every two days. In the last week, there have been 3 updates (this being the 4th).

Think about that: 3 updates, 2000 checks. 3. 2000 checks. Notice the ever so slight disparity?

Those Bloglines guys make a very usable interface to a damn fine service, but they really need to work on the crawler updating logic. It&#8217;s not that hard to extrapolate predictable update patterns. If a site is updating every 15 minutes, check it every 15 minutes. If it slows down and stays at once every day, 15 minutes is probably very inappropriate. Once an hour would be better. You don&#8217;t less any real sense of freshness and you don&#8217;t over do server hits.

Common sense and the polite thing to do.