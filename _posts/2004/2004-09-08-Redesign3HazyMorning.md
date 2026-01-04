---
id: 124
title: 'Redesign 3: Hazy Morning'
date: 2004-09-08T20:40:14+00:00
author: Gary Fleming
excerpt: 'A new design for Solitude: Hazy Morning'
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20040908204014
permalink: /Archives/2004/09/08/Redesign3HazyMorning/
---
As you may have noticed (unless you use a feed reader or are reading this some time in the future), I&#8217;ve finally gotten round to doing a redesign of Solitude. This, the 4th full design since I started the site, is called Hazy Morning.

It seems like I&#8217;m in fine company when it comes to redesigns, given recent or in progress changes by [Chris](http://chris-miller.org/blog/), [Matt](http://mattgemmell.com), [Fiona](http://bugsblog.com), [Jack Mottram](http://www.submitresponse.co.uk/mt/), [Drew Mclellan](http://www.allinthehead.com/), [Mozilla](http://www.mozilla.org/) et al.

Anyway, onto dissecting the trickier parts of the design.

The header uses standard [image replacement techniques](http://www.kryogenix.org/code/browser/lir/) and some <acronym title="Cascading Style Sheets">CSS</acronym> hacking to produce a full-length clickable region. It was more trick than it should be to get this working cross-platform. Much respect has to go towards the [CSS Underscore Hack](http://wellstyled.com/css-underscore-hack.html), the most elegant bug fix for <acronym title="Internet Explorer">IE</acronym> that I&#8217;ve yet to see. Very nice.

Equally getting the individual post headings to be fully targetable was awkward. The key to getting it to work is to make the surrounding block be set to `display: inline;` and the heading itself to `display: block;`, and then set the width of both to 99.9%.

Other than that, it was really a matter of tweaking as much as possible to get it to look alright in IE. It still doesn&#8217;t look perfect in that browser but I&#8217;ve spent enough time catering to a broken application.

If you see any problems in your browser, leave a comment with details of the bug and your platform, browser and resolution. I&#8217;ll be tweaking over the next few days anyway, but it&#8217;s good to get feedback.