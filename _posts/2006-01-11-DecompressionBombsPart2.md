---
id: 305
title: Decompression Bombs Part 2
date: 2006-01-11T13:20:20+00:00
author: Gary Fleming
excerpt: More concrete examples of how decompression bombs can be used.
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20060111132020
permalink: /Archives/2006/01/11/DecompressionBombsPart2/
---
The piece on decompression bombs was not supposed to be a panic piece, as it seems is implied, rather it was an informative one about a hidden danger in handling compressed files and, in my view, a neat little trick.

To respond to some questions about it: someone asked how you would create the compressed file in the first place since compressing that much data would have to be done in memory, causing you the same problem. Very astute! The answer is that you don&#8217;t: the uncompressed data never exists. You need to know enough about your compression algorithm to construct the compressed file directly, writing the output without any real input. This is not that tricky for most formats. The fact of the matter is that you can download decompression bombs quite freely.

In response to a comment by [David Russell](http://www.davidarussell.co.uk/), and to illustrate some points more clearly, I&#8217;m going to discuss some more concrete examples. First of all, David raises the issue that this just means &#8220;you restart&#8221;. Naively, yes, it does. A restart might not mean much to you, the home user, but it does to quite a few companies. Servers going down means a tangible loss in revenue and respect in the marketplace.

Moreover, denial of service attacks **are** used to blackmail companies. Mostly these come in the form of botnet attacks, but there&#8217;s no reason why a weak company couldn&#8217;t be taken down by decompression attacks. Frankly, without adequate defences, a decompression attack is far more effective than malicious pings.

Here are a few scenarios for you:

  1. You are an admin for a company with a reasonable IT infrastructure. Being sensible, your mail server scans all incoming attachments for problems. You&#8217;ve also put the servers into a replication configuration so that if one server goes down then your mail queues redirect. Someone sends you a decompression bomb; your mail server goes down pretty quickly because the scan tries to handle it in memory. For every minute the servers are down, you lose X pounds. Depending on how much you&#8217;ve thought about this, X can be a large number. Your redundant servers can&#8217;t easily help because they&#8217;ll start scanning the file and falling over. You have a few solutions: you can switch off scanning (obviously dangerous). Maybe you can switch off replication, though that generally means isolating that queue and dropping the mail on the floor while you figure out what has happened, potentially costing more money.
  2. You are an image storage/processing company who let your users upload images (like, for example, [flickr](http://www.flickr.com)). People upload whatever photos they like and let you display them. Because you want to save a considerable amount of bandwidth, you accept GZip encoded transfer of images. This saves you Y million a year (a conservative estimate for a large site). Someone sends you an image decompression bomb, which expands to some large amount on your servers. Your resources get drained while you either try storing it or sort it out. What can you do? Maybe you take the one time hit in writing it to disk; poor strategy if someone is using this as part of an effective distributed denial of service attack on your site. Maybe you just kill the GZip upload which, as we know, will cost you at least Y million a year; not a good idea if you&#8217;re looking to get promoted any time soon.

There are solutions to these scenarios (which I would like to leave as an exercise for my readers, comments anyone?), and I&#8217;m sure there are also more tricky scenarios for the really devious (again, I&#8217;d love to hear something quite sneaky). The point is that if you accept any content which is compressed, you should be aware of how this _could_ affect you.