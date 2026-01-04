---
id: 82
title: Changing Feed URLs in SharpReader
date: 2003-12-08T22:15:48+00:00
author: Gary Fleming
excerpt: How to change feed URLs in SharpReader
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20031208221548
permalink: /Archives/2003/12/08/ChangingFeedURLsinSharpReader/
---
You should be able to change feed <acronym title="Uniform Resource Locator">URL</acronym>s in [Luke Hutteman](http://www.hutteman.com/weblog/)&#8216;s [Sharpreader](http://sharpreader.net) without any hassle. You can&#8217;t. Here&#8217;s how you do it:

  1. Close SharpReader, making sure it is completely gone and not just hiding in the SysTray.
  2. Open your SharpReader data directory. On Windows XP, this will be something like &#8220;C:Documents and Settings%USER%Application DataSharpReader&#8221;, where %USER% is your username.
  3. Open the file called subscriptions.xml in a text editor (Notepad will do fine). It contains the list of all your current subscriptions. Find the line which applies to the feed you want to change and change it to the new URL. Save the file and close it.
  4. Open the subdirectory called &#8220;cache&#8221;. There will be a list of <acronym title="eXtensible Markup Language">XML</acronym> files. Their names correspond to the feed they are caching. If you updated the feed name, change it here as well. If you updated the feed&#8217;s extension, things are trickier. If it has been changed _to_ .xml, remove the old extension from the cached file name. If it has been changed _from_ .xml, you will need to add the new extension to the end of the file name (it will not currently have a .xml extension).
  5. Restart SharpReader.

That&#8217;s what works for me, but as protection for me try this at your own risk.