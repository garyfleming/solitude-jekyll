---
id: 292
title: 'Design: Internet Explorer'
date: 2005-08-02T22:57:55+00:00
author: Gary Fleming
excerpt: Wherein IE does something a little retarded. Surprisingly.
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20050802225755
permalink: /Archives/2005/08/02/DesignInternetExplorer/
---
Consistency. One of the cornerstones of design. Things do as you expect them to. Simple. If you see something act one way, you expect and identical item to act the same way. It&#8217;s not unreasonable.

Internet Explorer though, it has other ideas.

You see, when I open up a new window I expect it to act the same regardless of how it is opened. Clicking the <acronym title="Internet Explorer">IE</acronym> icon in my Quick Launch bar should be the same as using <kbd>Ctrl</kbd> + <kbd>N</kbd>. Sadly, it&#8217;s not so. The latter of these methods opens up another window in the context of the currently in-use IE process. This means that, rightly, all cookies and such are propagated through that have been set during the current browser session.

However, if you click the IE Quick Launch (or any other shortcut to the executable) to start new windows, then it launches an entirely separate process. In this context, no cookies and other information are propagated through. The up and downsides of this behaviour is that you have to be bloody careful if you&#8217;re testing out a webapp in different accounts; you might not get the login behaviour you expect.