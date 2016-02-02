---
id: 222
title: Tabtastic Problems
date: 2005-03-26T21:57:51+00:00
author: Gary Fleming
excerpt: A small UI problem with tabtastic
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20050326215751
permalink: /Archives/2005/03/26/TabtasticProblems/
---
Yesterday, I read about [Tabtastic](http://phrogz.net/JS/Tabtastic/index.html) (via [Jack]()) and was a little impressed by how simple it is. Follow a simple naming convention and data structure on your page and you can have a javascript-implemented tab pane effect on your site. It looks good, and the html is reasonably semantic (if that is your thing.)

The problem, however, is with usability. When you click on a tab, you change the anchor position of the page (the url fragment beginning &#8220;#&#8221;). This kicks off whatever logic is required to ensure the correct information is showing for that page. It also scrolls the tab bar off the screen, completely breaking the illusion of having a tab pane. A change of tabs should only change the content, not the window position.

A small matter, but one that immediately hinders the usability of the system.