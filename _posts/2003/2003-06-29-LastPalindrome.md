---
id: 133
title: Last Palindrome
date: 2003-06-29T23:13:22+00:00
author: Gary Fleming
excerpt: "I've updated the palindrome code"
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20030629231322
permalink: /Archives/2003/06/29/LastPalindrome/
---
Ever have one of those zen moments when you see a problem in a perfectly clear way, removing the garbage that you had before? I had one today. It makes my previous effort really quite embarrasing.

I&#8217;ve updated the [Palindrome code](/Code/Palindrome/) to make it a million times simpler. How did this happen? I was looking at the <acronym title="PHP: Hypertext Processor">PHP</acronym> manual for something entirely unrelated and noticed the `strrev` function. Everything immediately clicked into place in my head: rather than compare the first and last characters of a string recursively after stripping it down, just strip it down and compare it to its reverse. Simple.

The changes have been uploaded and should have propagated automatically through to the [online palindrome checker](http://solitude.vkps.co.uk/Code/Palindrome/IsPalindromeForm.php) and <acronym title="eXtensible Markup Language Remote Procedure Call"><acronym title="eXtensible Markup Language">XML</acronym>RPC</acronym> <acronym title="Application Interface">API</acronym> interfaces.