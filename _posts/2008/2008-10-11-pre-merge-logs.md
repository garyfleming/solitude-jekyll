---
id: 669
title: Pre-merge Logs in SVN
date: 2008-10-11T10:10:06+00:00
author: Gary Fleming
layout: post
guid: http://solitude.vkps.co.uk/?p=669
permalink: /Archives/2008/10/11/pre-merge-logs/
categories:
  - Uncategorized
---
Any time, after a little to long on a branch, that I go to merge back to trunk, I seem to forget the magic steps involved in making this easy. For my own reference, tag the head of the branch and then:


`
<pre>
svn log http://example.com/url/to/branch --stop-on-copy 
</pre>
<p>`

&#8230; will get us the revision that the branch happened from. Let&#8217;s say it&#8217;s 27101.


`
<pre>
svn diff -r27101:HEAD http://example.com/url/to/branch --summarize
</pre>
<p>`

&#8230; will let us know of all the files that have changed between that revision and the head of the branch.

Then you&#8217;re free to take a trunk check-out and do a merge with full knowledge of what&#8217;s happened.