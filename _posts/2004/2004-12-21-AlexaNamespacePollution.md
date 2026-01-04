---
id: 347
title: Alexa Namespace Pollution
date: 2004-12-21T22:56:13+00:00
author: Gary Fleming
excerpt: Fixed file names for resources are a bad thing.
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20041221225613
permalink: /Archives/2004/12/21/AlexaNamespacePollution/
---
Alexa, Amazon&#8217;s search engine, is apparently [encouraging people to create info.txt files](http://jtauber.com/blog/2004/12/21/alexa_does_datalibre_right). I say apparently because I can&#8217;t find the page myself, but I trust the source.

<acronym title="Uniform Resource Indicator">URI</acronym> namespace pollution is a bad thing!

We can&#8217;t do much about it in the case of robots.txt, that standard is too deep-rooted now, but we should be severely discouraging anyone from following that same route.

Why? Spurious requests cause bandwidth to go up. You will already be getting hundreds of requests a day for favicon.ico and robots.txt if you run a site, do you really want more?

This pollution is bad. It&#8217;s not extensible or open to pre-discovery. It&#8217;s rooted in a view of the web that no longer exists, where the root of a domain represents a website and the only website at that domain. The web doesn&#8217;t exist like that any more.

This kind of pollution is damaging and will eventually reduce the scalability of the web, as more protocols suffocate the reasonable URI namespace. There is no need for this. We have enough mechanisms to allow more fluid interactions to discover information that is needed, if present.

So, please, no info.txt files.