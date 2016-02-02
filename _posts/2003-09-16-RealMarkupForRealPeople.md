---
id: 114
title: Real Markup For Real People
date: 2003-09-16T15:46:43+00:00
author: Gary Fleming
excerpt: Another round of XHTML Fighting
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20030916154643
permalink: /Archives/2003/09/16/RealMarkupForRealPeople/
---
Time for another round of fighting with <acronym title="eXtensible HyperText Markup Language">XHTML</acronym>, accessibility and the like.

First, I now provide a custom id on the root (`html`) rather than on the body, for those browsers that I send the site to as real XHTML (Opera, Mozilla, etc). Other browsers still get it on the `body`.

Also, given the [recent findings about screen readers](http://www.mezzoblue.com/cgi-bin/mt/mezzo/archives/000259.asp), I&#8217;ve changed my skiplink <acronym title="Cascading Style Sheets">CSS</acronym> as appropriate. I wanted to use [Tom Gilder&#8217;s skiplink method](http://blog.tom.me.uk/2003/09/13/skipadeedoodah.php), but it refused to work with my site. I&#8217;ve gone for a more basic version, and will come back to the problem at a later date.

Finally, one thing I&#8217;ve yet to implement is [marking up all instances of `acronyms`](http://golem.ph.utexas.edu/~distler/blog/archives/000218.html). Jacques is offering some excellent advice on that page that I intend to follow. But not yet, I&#8217;ve had enough of looking at code for one day.