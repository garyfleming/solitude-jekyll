---
id: 6
title: Searching Done Right
date: 2003-06-20T14:03:52+00:00
author: Gary Fleming
excerpt: Tim Bray talks about searching
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20030620140352
permalink: /Archives/2003/06/20/SearchingDoneRight/
---
[Tim Bray](http://tbray.org/ongoing/) has started a series of articles about search. So far he&#8217;s covered [the background of searching](http://tbray.org/ongoing/When/200x/2003/06/15/OnSearch), [what users want from search engines](http://tbray.org/ongoing/When/200x/2003/06/17/SearchUsers), and [the basics of building a search engine](http://tbray.org/ongoing/When/200x/2003/06/18/HowSearchWorks). All great articles, with more to come.

I mention this because one of my summer projects is to build a search engine for this site. I was going to use a fast dynamic form of [Latent Semantic Indexing](http://javelina.cet.middlebury.edu/lsa/out/lsa_definition.htm) with no real index.

Basically, I was going to generate a vector space based on the query words alone and not the overall dataset (it&#8217;s normal to get all the words in every document, create a vector space and then project a query into it). For a small data set, I think my proposed method would work better: providing better spacial efficiency (for sure) and time efficiency (as long as the query and data set were reasonably small).

Of course, this site is still growing. I wouldn&#8217;t want to build a search engine only to have to rebuild it in 6 months because the number of posts had grown substantially. So I&#8217;m going to wait until I&#8217;ve finished reading this series before going ahead with the project.