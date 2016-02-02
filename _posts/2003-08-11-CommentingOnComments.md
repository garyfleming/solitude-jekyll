---
id: 52
title: Commenting On Comments
date: 2003-08-11T23:25:25+00:00
author: Gary Fleming
excerpt: Some thoughts on comments
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20030811232525
permalink: /Archives/2003/08/11/CommentingOnComments/
---
I&#8217;ve been doing a lot of thinking about commenting systems lately (no prizes for guessing why.) It occurs to me that my biggest problem with allowing comments is the vulnerability that it gives the site. By letting others post (in reply to my entries), I allow them the opportunity to inject malicious or malformed code.

To bypass this, I could `strip_tags()`. But that rather limits the ability of people to express themselves fully; I know I&#8217;d hate to have most of my <acronym title="eXtensible HyperText Markup Language">XHTML</acronym> vocabularly pulled out from underneath me. I could allow a limited textile style pseudo-markup language (which I probably will), but many are set in writing proper <acronym title="HyperText Markup Language">HTML</acronym>.

I&#8217;ve settled on my last option: processing comments with various regular expressions (to get rid of the dangerous) and then sending it through Simon Willison&#8217;s [safe HTML checker](http://simon.incutio.com/archive/2003/02/23/safeHtmlChecker) class. Playing with it earlier, it works a treat.

Now, I just need to find the time to implement it and the rest of the commenting system.