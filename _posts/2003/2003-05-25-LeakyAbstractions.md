---
id: 138
title: Leaky Abstractions
date: 2003-05-25T23:05:35+00:00
author: Gary Fleming
excerpt: Just a note on The Law Of Leaky Abstractions
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20030525230535
permalink: /Archives/2003/05/25/LeakyAbstractions/
---
Tying in with what I&#8217;ve already [mentioned about abstractions](http://solitude.vkps.co.uk/News/Archives.php?Date=20030504), <cite>Joel</cite> has written up [The Law Of Leaky Abstractions](http://www.joelonsoftware.com/articles/LeakyAbstractions.html); something that I&#8217;ve known for a while, but have never managed to consolidate in my head. This is why too many layers of abstraction are dangerous: if something leaks (and they do), it takes an age to track the problem through the layers and then figure out why it leaked.