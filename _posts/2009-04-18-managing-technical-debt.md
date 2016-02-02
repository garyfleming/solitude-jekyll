---
id: 728
title: Managing Technical Debt
date: 2009-04-18T17:33:58+00:00
author: Gary Fleming
layout: post
guid: http://solitude.vkps.co.uk/?p=728
permalink: /Archives/2009/04/18/managing-technical-debt/
categories:
  - Uncategorized
tags:
  - Concepts
  - Software Engineering
  - Technical
---
A few months ago, I came across the term [Technical Debt](http://martinfowler.com/bliki/TechnicalDebt.html) to describe a situation that I&#8217;ve long been familiar with: you have some code to write and you can either do it the messy but fast way, or the neat but laboured way. One usually means just hacking in a quick solution, and the other usually means careful refactoring to set-up the abstractions you&#8217;re writing to their fullest. If you decide to do it the fast way then it&#8217;s likely, even if it&#8217;s not obvious today, that you **will** have to maintain it a later date (no code is an island, the real cost is in maintenance etc). Thus you have a technical debt that you **will** have to repay at some point; whether in the form of rewriting the code to the proper way, or hacking further around it. You pay back technical debt by paying time on the principal (fixing the original issue) and paying time on the interest (having to work around something that isn&#8217;t as neat as it could be).

You can take this metaphor quite far (continued hacking eventually causes bankruptcy, for example) but I&#8217;ll leave it at that for the moment.

In the past, I&#8217;ve worked on projects where technical debt was carefully managed. On those projects, code was easy to write and maintain, and performance tended to be very high; largely because everyone understood the entirety of the code base and always knew how their decisions affected the system as a whole. This was pleasant, but required stringent regulation.

I&#8217;ve also worked on a project where massive technical debt was accrued and project management insisted on every fix being the fastest one possible, regardless of the long term consequences (I hasten to add I was largely opposed to this, but at some point you just have to get on with things). By the end, doing anything took far longer than it should have and performance began to tank. Working around the debt and managing time began to be the only thing possible, and paying off the principal never happened because there wasn&#8217;t any time left. That&#8217;s a bad situation to be in.

All of that said, if you know what you are building is a one-off or infrequently used piece of code that is needed sooner rather than later, **taking on some technical debt can be the most frugal thing you can do**. Rather than work on figuring out the neatest abstraction, or the nicest algorithms, just get the code working quickly and move on.

Now, I&#8217;m not saying that this is how you justify doing things the wrong way. There are rules you must adhere to in order to manage your debt.

  1. Only take on technical debt on one-off or seldomly accessed code.
  2. As soon as indebted code becomes used or maintained more frequently, and it inevitably will, you must endeavour to pay off the debt as soon as possible; before moving onto new code.
  3. If you&#8217;re not sure whether or not you can take on debt in a given situation, you can&#8217;t. Write it properly and forget about it.
  4. Never, ever, sacrifice documentation. If anyone is to have any hope of understanding your code (even the really good stuff), they&#8217;re going to need documentation. You cannot put your documentation into debt and hope someone else can pick it up easily.

Remember: all debt needs to get paid, or the whole thing can come crashing down.