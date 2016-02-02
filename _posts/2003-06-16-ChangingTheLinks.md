---
id: 48
title: Changing The Links
date: 2003-06-16T21:52:23+00:00
author: Gary Fleming
excerpt: Permalinks have all been changed
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20030616215223
permalink: /Archives/2003/06/16/ChangingTheLinks/
---
After hours of trying to get it to work online and offline simultaneously, I&#8217;ve finally managed to change the permalinks around here to something approaching respectable. They&#8217;re now in the form &#8220;/Archives/Year/Month/Day/#Title&#8221; rather than the Google-incompatible &#8220;/News/Archives?ArtID=YearMonthDayTime&#8221;. The first time I tried it (a few weeks ago), I ended up crashing one of my servers. Now that my exams are over with, I&#8217;ve had time to clear my head and solve the problem.

Why did it take so long? Well, I had to fork two very subtly different versions of .htaccess to serve up each new <acronym title="Uniform Resource Indicator">URI</acronym> to each server. Then I had to make sure that every conceivable permalink that has been used in the past is still compatible (there are a lot of variations and it&#8217;s a non-trivial job); they all do. Then I had to change the templates and archive code to actually output the new <span class='caps'>URI</span>. There&#8217;s more, but I won&#8217;t bore you further.

The best part, though, is that there is an even better permalink scheme on the way: providing incredibly flexible and intuitive paths (yes, it will be able to figure out any relevant crap you throw at it), while remaining completely compatible with this scheme.

Also note, the links in the main navigation are all in the <span class='caps'>URI</span> form now, but will still work with the older paths.