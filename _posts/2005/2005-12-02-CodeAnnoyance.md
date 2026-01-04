---
id: 72
title: Code Annoyance
date: 2005-12-02T16:52:46+00:00
author: Gary Fleming
excerpt: My current code pet peeve.
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20051202165246
permalink: /Archives/2005/12/02/CodeAnnoyance/
---
To children and novice programmers:

When writing various kinds of applications or <acronym title="Application Interface">API</acronym>s, it is often the case that you will have functions of the form `is<em>Object</em>Valid()` (or a similar kind of check that begins with &#8220;is&#8221;), where Object is some variable or object. This is fine: checking data and providing methods to do so is a Good Thing, in that it is considerate and generally fulfills a use case.

Something you should never do is write a function like `isObject<em>In</em>valid()`. Putting negation into this kind of check is a lot like a double-negative in English, it makes life more difficult for everyone else because they have to spend more time straightening out the negations. This mistake is compounded by the fact it is almost always used in conjunction with the language negation to give: `!isObjectInvalid()`. Argh!

Next person to do this gets hurt.