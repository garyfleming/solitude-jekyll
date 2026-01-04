---
id: 353
title: An API completes the set
date: 2003-06-18T17:30:40+00:00
author: Gary Fleming
excerpt: The palindrome checker now has an API
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20030618173040
permalink: /Archives/2003/06/18/AnAPIcompletestheset/
---
A week or so ago, I [updated the palindrome code](http://solitude.vkps.co.uk/Archives/2003/06/09/#CheckingPalindromes) found on this site, but I couldn&#8217;t implement everything I wanted to. Now, I have the time to do it. For the past day or two, I&#8217;ve been messing around with <acronym title="eXtensible Markup Language - Remote Procedure Call">XMLRPC</acronym> servers and clients, trying to get a feel for how it all works. It&#8217;s really quite simple once you get into it.

So, in this spirit, I have now got [an API for the palindrome checker](http://solitude.vkps.co.uk/Code/Palindrome/PalindromeAPI.php). While it only has one method at the moment, I&#8217;m sure if anything else comes to mind, it&#8217;ll be trivial to add it in.

More importantly, by having an XMLRPC server running, I&#8217;ll be able to add and incorporate support for more web services; such as [pingback](http://www.hixie.ch/specs/pingback/pingback). While it&#8217;s not available yet, it will be soon enough.