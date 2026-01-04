---
id: 250
title: TechnoBabble
date: 2003-04-01T22:19:09+00:00
author: Gary Fleming
excerpt: GZIP and pinging weblogs.com
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20030401221909
permalink: /Archives/2003/04/01/TechnoBabble/
---
A few changes around the back-end of the site:

  * **G-ZIP Enabled** &#8211; If you have a relatively modern browser, then the site will now download up to twice as fast as before, thanks to the magic of <acronym title="PHP: Hypertext Preprocessor">PHP</acronym>&#8216;s built-in [g-zip output buffering function](http://www.php.net/manual/en/function.ob-gzhandler.php). I&#8217;ve known about it for a while, but have been reluctant to activate it because part of Finetto uses it&#8217;s own output buffer. I thought they might be incompatible. I was wrong, both work fine.
  * **Pinging [weblogs.com](http://www.weblogs.com)** &#8211; I&#8217;ve started pinging [weblogs.com](http://www.weblogs.com) and incorporated the functions into Finetto. Every time I updated, weblogs.com can tell others about it within 5 minutes (roughly how often it takes them to change their log file).
  * There was something else, but I forgot so this point is useless. Ignore it.