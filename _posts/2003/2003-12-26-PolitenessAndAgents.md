---
id: 322
title: Politeness And Agents
date: 2003-12-26T23:07:31+00:00
author: Gary Fleming
excerpt: A short article on making agents more polite to the user
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20031226230731
permalink: /Archives/2003/12/26/PolitenessAndAgents/
---
Politeness has long been a problem for automated agents on the web. Well, it&#8217;s not so much that politeness is a problem; agents are programmed to be impolite, whether accidently or not. Politeness is a solved problem.

Let us be clear on what is meant. &#8220;Agents&#8221; refers to any automated system capable of talking to web servers, i.e. search engines, aggregators, download managers etc. &#8220;Polite&#8221; means waiting a while before checking a server again.

  1. If a download manager hammers a file on my site 50 times a minute unsuccessfully, that&#8217;s impolite,
  2. If a search agent crawls my entire site, doing so again 4 hours later is impolite. Doing so again _every_ 4 hours is downright rude,
  3. If an aggregator agent checks my <acronym title="Rich Site Summary">RSS</acronym> feeds more than 3 times an hour, that&#8217;s impolite.

How can we solve these problems? As was said earlier, politeness is a solved problem.

However, the **current solutions are poor**. In all 3 situations above, the user of these agents would be banned from crawling the site (either automatically or after manual inspection of logs). &#8220;Good riddance,&#8221; you might be thinking, &#8220;no good bandwidth leech, I&#8217;m better of without them.&#8221;

Have you considered that the user doesn&#8217;t know any better? They don&#8217;t know they&#8217;re being impolite because so few tools actually _tell_ them.

Download managers: they&#8217;ll let you pick any number of connections and any time interval between retries. Would it kill the implementer to bring up a dialogue saying: &#8220;This could cause a heavy load on a server, causing you to be banned. Are you sure you want to change settings?&#8221;

Search agents: Is it so hard to say: &#8220;The time interval you&#8217;ve specified between crawls is impolite, and may get you banned and blacklisted. Are you sure you want to keep new settings?&#8221;

Aggregator agents: A similar time interval warning to search agents would suffice. As an aside, there is a mechanism in RSS that allows the producer of the feed to [specify a recommended time interval](http://web.resource.org/rss/1.0/modules/syndication/) between checks. Do any aggregators support it? Do they tell the end user if they&#8217;re in breach of it? Hmmm? Thought not.

If a user doesn&#8217;t heed the warnings, ban them.

This puts the pressure on the tool makers to tell users of bad behaviour. And why shouldn&#8217;t it be? They should keep their users informed; it&#8217;s only polite.