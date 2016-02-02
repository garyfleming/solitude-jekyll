---
id: 331
title: 'PHP Challenge #3'
date: 2003-03-08T20:35:58+00:00
author: Gary Fleming
excerpt: The third PHP Challenge
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20030308203558
permalink: /Archives/2003/03/08/PHPChallenge3/
---
As a result of some feedback, this challenge is going to be a bit more practical. The previous were practical in the sense that they could be used in some circumstances, but they had nothing to do with every day usage of <acronym title="PHP: Hypertext Preprocessor">PHP</acronym>. This one does.

I want a function that takes in 3 variables:

  1. _$Path_: a directory path in the form &#8220;/path/to/folder&#8221;,
  2. _$Filename_: the name of some file (including extension, i.e. file.txt,
  3. _$String_: a string of characters

Now, the function **must**:

  * Create all directories in $Path that don&#8217;t already exist,
  * Create $Filename in the directory created by $Path,
  * Put the contents of $String into $Textfile

Please remember, I&#8217;ll be testing this on a Linux server so **file permissions matter**. You will almost certainly need the chmod() function.

The rules are:

  * The winner is the person who writes the most efficient script (i.e. the one whose script runs the fastest over several test runs). Size of the function is **not** an issue this time,
  * All functions should return a value of true if the operation is succesful, false otherwise,
  * All functions **must** be called FileCreator,
  * All functions submitted are considered public domain and hence can be reproduced and used with or without credit to anyone by anyone (so no bitching if someone rips off your script after the challenge finishes),
  * The winning script will be archived here for prosperity and to help others,
  * New rules may be added here at any time,
  * My decision is final,
  * All functions should be submitted to <solitude@vkps.co.uk>,
  * This is a slightly harder task, so the deadline is 12pm <acronym title="Greenwich Mean Time">GMT</acronym> on 19th March 2003

You have 11 days from now. Good luck!