---
id: 480
title: Invalid Id Values
date: 2004-02-01T22:46:41+00:00
author: Gary Fleming
excerpt: Hacking around an invalid id
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20040201224641
permalink: /Archives/2004/02/01/InvalidIdValues/
---
Without realising it, for the last few days my <acronym title="eXtensible HyperText Markup Language">XHTML</acronym> has been invalid. While in pursuit of markup perfection, that will not stand.

The problem was that a blog entries title began with a number. That&#8217;s ok. However, those titles are used as ID values on the headers for that entry. ID values aren&#8217;t allowed to begin with numbers &#8211; I have no idea why, but that&#8217;s how it is.

The fix: prepend an X to the title.

The moral: just because an <acronym title="eXtensible Markup Language">XML</acronym> parser (my browser) didn&#8217;t notice the error, doesn&#8217;t mean that it&#8217;s valid X<acronym title="HyperText Markup Language">HTML</acronym>. Validate, validate, validate.