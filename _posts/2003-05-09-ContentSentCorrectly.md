---
id: 61
title: Content Sent Correctly
date: 2003-05-09T23:41:03+00:00
author: Gary Fleming
excerpt: I now send content as application/xhtml+xml
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20030509234103
permalink: /Archives/2003/05/09/ContentSentCorrectly/
---
A few days ago, I read about a test someone was doing on various sites. The [test showed](http://www.goer.org/Journal/2003/Apr/index.html#29) that of 119 sites tested, only 1 site had fully conformed to <acronym title="eXtensible HyperText Markup Language">XHTML</acronym>. So, I wanted to see if this site passed the tests.

The first two were easy: every page on this site validates as XHTML 1.1 (or it damn well should). The last one was a known problem: sending the pages you read as _application/xhtml+xml_ rather than _text/html_. So off I went to find a solution.

It wasn&#8217;t long before I found <cite>Mark Pilgrim&#8217;s</cite> [Road To XHTML 2.0: MIME types](http://www.xml.com/pub/a/2003/03/19/dive-into-xml.html), which included a trivial piece of <acronym title="PHP: Hypertext Preprocessor">PHP</acronym> that would solve my problems. It was quickly added to my headers.

Now, this change to my PHP meant that browsers who could accept the correct MIME type got that sent to them, others (like <acronym title="Internet Explorer/Windows">IE/WIN</acronym>) got a normal MIME type that wouldn&#8217;t strain them.

Everything was going fine until I had to edit a post (I never spell-check this until well after entries go online). The editing feature of my <acronym title="Content Management System">CMS</acronym> bawked at the new MIME-type. Why? Because browsers refuse to display any XHTML in a textarea when you use the proper MIME-type, leaving me screwed since my CMS dumps XHTML straight into a textarea to be manipulated.

After a bit of fudging, it all works. I can hardly wait for a new bunch of problems when [XHTML 2.0](http://www.w3.org/TR/2003/WD-xhtml2-20030506/) hits.

<ins>Sorry for how boring this all turned out. I&#8217;m a little ill today, and it seemed interesting when I started writing. Oh, how wrong.</ins>