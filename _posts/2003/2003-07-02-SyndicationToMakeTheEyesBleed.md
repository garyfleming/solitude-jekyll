---
id: 3
title: Syndication To Make The Eyes Bleed
date: 2003-07-02T17:22:56+00:00
author: Gary Fleming
excerpt: "I've added a few new syndication formats"
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20030702172256
permalink: /Archives/2003/07/02/SyndicationToMakeTheEyesBleed/
---
I&#8217;ve added a few new syndication formats today, thanks largely to the fact that the generic feed creation script I wrote last week actually works. So what are these fun new flavours of syndication?

First up is [my <acronym title="Epistula Syndication Format">ESF</acronym> feed](/Syndication/Epistula.esf). This is a very simple format: date, title and link all in plain text. And that&#8217;s it. [The ESF spec](http://www.aquarionics.com/article/name/esf) explains everything you need to know.

Secondly, is [my <acronym title="Channel Definition Format"><acronym title="Compact Disk">CD</acronym>F</acronym> feed](/Syndication/ChannelDefinition.cdf) for <acronym title="Internet Explorer">IE</acronym> users only (after the enhancements users of better browsers get, it&#8217;s the least I could do for those poor people still suffering a slow bloated browser). Click on the link to the feed and it&#8217;ll try to add itself to your favourites. Let it. This will then give you a list of all the current items.

A little bit more difficult to implement. I basically copied the format used by [Sam](http://www.intertwingly.net) and [Aquarionics](http://www.aquarionics.com) and did my best to get it to work. The only thing that wasn&#8217;t fairly obvious was that it must be served with a MIME type of `application/cdf`.

Both feeds, and others, can be found on [the syndication page](/Syndication/).