---
id: 338
title: 'Plagiarism: Introduction'
date: 2006-10-17T22:38:57+00:00
author: Gary Fleming
excerpt: An introduction to a series on plagiarism detection.
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20061017223857
permalink: /Archives/2006/10/17/PlagiarismIntroduction/
---
Having been been involved in various natural language problems at university, the area of study interests me greatly as a series of very difficult problems. Despite that, I&#8217;ve written very little about it. This series on plagiarism detection is an attempt to rectify that.

First, the problem: people are opportunistic, lying cheats who will take any advantage to get ahead. Well, if you believe the tabloids. While we might not all be like that, sadly, the number of people cheating in universities is increasing. Rather than work hard and produce their own work, professors are dismayed to find that several students hand in suspiciously similar pieces of work. Of course, with rather a lot of students in any given course, it can be very difficult to match up a handful as being similar. Lots of people, lots entries, not enough time to go through them and compare every single one against every other one by hand.

Take some time to appreciate the scale of the problem: if a class has 300 people, and you want to compare them all against each other, you&#8217;re invoking the classic [handshake problem](http://dwb.unl.edu/calculators/activities/middle/shake.html). To compare them all, you have to do _44850_ checks. Ouch.

This is where **plagiarism detection** comes in: we want to automatically detect any near-duplicates in a group of submissions, eliminating any honest submissions in the process.

Note that although I will refer to most examples in terms of students, submissions and universities, you can substitute in a wide range of domains. Copied texts in a library, finding cross-quotations, finding duplicate entries in financial market systems, the list is nearly endless.

Next, a couple of useful terms: If one person copies another without that person knowing, we call that **plagiarism**. If two or more people copy one another intentionally, we call that **collusion**. For our purposes, these are the same thing. Why? It would be tremendously difficult, if not impossible, to infer the intentions of any entries marked as potential duplicates. Because of this and other possible failings in the system, it is never for the system to act as a final decision maker in whether or not people are cheating; it merely serves as an ordering system for someone else to make a decision. We will, therefore, use the terms &#8220;plagiarism&#8221; and &#8220;collusion&#8221; in interchangeably.

It&#8217;s worth reiterating that plagiarism detection systems are just ordering systems: they take in a bunch of entries, find groups of similar entries (normally simple pairs of entries), and order those groups by the similarity found within. A user would then look at the produced ordering and decide whether these entries really are similar. There&#8217;s nothing unusual about that, when you think about it. Google is doing something pretty similar: it takes a bunch of web pages and a query, groups them on key attributes (words, meta-data, rankings), and orders the pages by how similar they are to the query. A user would then look at the produced ordering and decide which entries best matched the query. You&#8217;ve done this a million times yourself, you know it mostly works.

You also know that, heck, sometimes it doesn&#8217;t; you can&#8217;t make decisions on the ordering with absolute certainty. In this way, plagiarism detection, search engines and other natural language problems are, at the time of writing, incomplete. While we don&#8217;t have the natural language problem nailed, we have to accept that they sometimes produce errors. In the case of plagiarism detection systems, those errors could lead to someone being kicked out of university if the risks are not understood. Again, these systems are just for ordering: not absolute decision making.

Another point worth noting is that plagiarism detection systems generally deal with **intra corpus** search. That is, we know and have absolutely every entry in the set: they all come from submissions for a set exercise with a set deadline. After the deadline, the set is fixed in size, it will never grow, and it is almost always relatively small in size (a few hundred or thousand entries). Compare with web search where the corpus of documents is continually increasing and has billions of entries. So we&#8217;re comparing the entries in a fixed size set of documents, and not against a wider set. It is possible to compare against a much larger set like, say, the internet to find people copying from there, but it&#8217;s beyond the scope of much of the series as it is a much more difficult problem.

We&#8217;re nearly down with this introduction, I hope by the time that I end this series, you will have a much better feel for how plagiarism detection works, how natural language problems can be solved, and what the trade-offs can by through-out.

Finally, I highly recommend that you read Tim Bray&#8217;s excellent [On Search](http://www.tbray.org/ongoing/When/200x/2003/07/30/OnSearchTOC) series. While reading the whole thing will do you no harm, if you&#8217;re lacking time I would read the sections on [Precision and Recall](http://www.tbray.org/ongoing/When/200x/2003/06/22/PandR) and [Stop Words](http://www.tbray.org/ongoing/When/200x/2003/07/11/Stopwords) as they hint at areas that need to be understood for most of this series.