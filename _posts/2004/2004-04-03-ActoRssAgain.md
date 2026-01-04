---
id: 345
title: ActoRss Again
date: 2004-04-03T21:13:17+00:00
author: Gary Fleming
excerpt: A reworking of ActoRss
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20040403211317
permalink: /Archives/2004/04/03/ActoRssAgain/
---
After some recent downtime, [ActoRss](/Code/ActoRss/) is now fully functioning. For anyone who is unaware, it is a system to get an <acronym title="Rich Site Summary">RSS</acronym> feed for the latest films an actor has appeared in (or will appear in).

I took the opportunity to rework the original code, with the following improvements:

  1. **Faster** &#8211; Although still a little on the slow side (due to the proxy nature of screen scraping), this version is much faster than the previous.
  2. **Error Correction** &#8211; If you mispell an actor&#8217;s name, it will try to find the nearest, most relevant match.
  3. **Atom Enabled** &#8211; You can now get your feed in the Atom format. Although I&#8217;m unhappy with some of the constraints Atom places on such a simple feed (modified and issued dates are unknown and irrelevant), I&#8217;d rather leave it up to the users to pick their format.
  4. **Directors** &#8211; You can now also get feeds for directors, sound engineers, visual effects supervisors&#8230; If they&#8217;ve warranted a page on [imdb](http://us.imdb.com), you can get a feed for them.

Now, I know that those last two improvements make a mockery of the name (since it&#8217;s now no longer solely about actors and RSS), it just seemed like the obvious extension to the existing version. Hope people enjoy it.