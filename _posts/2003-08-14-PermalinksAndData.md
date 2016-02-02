---
id: 335
title: Permalinks And Data
date: 2003-08-14T22:59:34+00:00
author: Gary Fleming
excerpt: 'Permalinks mixed with data: urls'
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20030814225934
permalink: /Archives/2003/08/14/PermalinksAndData/
---
There&#8217;s an old problem with permalinks: they have a tendency to end up not being permanent. You keep a record of articles (bookmarks/favourites) that you know you&#8217;ll want to refer back to later. When it comes time to actually use them, the links are broken for whatever reason and you&#8217;re left staring at a 404 screen. Not fun.

It&#8217;s happened to me once too many times, so I&#8217;m going to try to solve the problem for at least my site. My thinking is that servers are outwith the control of most people, even the owner of the site living on the server, thus making it the weakest link in the distribution chain. So, how do we remove reliance on servers to recall information?

The best answer is immediate addressing in the form of [Data: <acronym title="Uniform Resource Locator">URL</acronym>&#8216;s](http://www.ietf.org/rfc/rfc2397). For those who&#8217;ve never seen a data:url, it&#8217;s a way to store information (images, text, or pretty much anything else) as a link; that is, the link **is** the data, not just a pointer to it. It&#8217;s a great concept being used in various ways (not least as a way of beating <acronym title="Digital Video Disc">DVD</acronym> encryption).

When permalinks meet data:urls, we have a way of storing entries as links. That is, we have bookmarks that will _never_ break.

Of course, this is not without it&#8217;s problems:

  1. **Internet Explorer** &#8211; Not unsurprisingly, <acronym title="Internet Explorer">IE</acronym> does not support data: url&#8217;s and won&#8217;t do anytime soon. So, those users don&#8217;t get the added benefits unless they upgrade.
  2. **Bandwidth** &#8211; by providing the data on a page and as a link, bandwidth usage is effectively doubled. This is not good. To combat this, I only provide data: permalinks on individual item pages. You&#8217;ll have to click through to an entry to get the data permalink.
  3. **Limited space** &#8211; Although [Mozilla](http://www.mozilla.org) and its derivatives offer data: urls of up to 2Gb, the recently added support in [Opera](http://www.opera.com) is limited to 4kb. That&#8217;s not a lot of room for a full-on essay. Happily, though, it&#8217;s easily big enough for _most_ entries around here. Those that are too long get automatically cut down to size and a real permalink added to the end, pointing to the full articale. This is very much a compromise, but one worth making.
  4. **Unclosed Tags** &#8211; Related to large essays getting cut down (above), permalinks on this site might have unclosed tags towards the end. This is entirely my fault. Eventually, I will work on a way to automatically close tags that are open, but until I do they&#8217;ll be broken. Sorry.

If you want to play with data: urls yourself, there are some good resources. Ian Hickson&#8217;s [data: <acronym title="Uniform Resource Indicator">URI</acronym> kitchen](http://software.hixie.ch/utilities/cgi/data/data) is the best place to generate them for experimentation. Or, if you&#8217;re feeling really fruity, there is Simon Willison&#8217;s [self-contained data: URI kitchen](http://simon.incutio.com/archive/2003/08/11/selfContained#comments); a reinvention of Ian&#8217;s kitchen as a data: uri (confusing yes, useless no).

Thanks to [Ian Hickson](http://ln.hixie.ch) for providing the numbers on <acronym title="Uniform Resource Locator">URL</acronym> lengths, and to [Simon Willison](http://simon.incutio.com) for reworking the original kitchen and inadvertantly giving me a kick to get this done.