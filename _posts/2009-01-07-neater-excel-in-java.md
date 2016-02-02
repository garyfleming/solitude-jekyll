---
id: 699
title: Neater Excel in Java
date: 2009-01-07T21:35:44+00:00
author: Gary Fleming
layout: post
guid: http://solitude.vkps.co.uk/?p=699
permalink: /Archives/2009/01/07/neater-excel-in-java/
categories:
  - Uncategorized
---
If you write applications or websites using Java, you&#8217;ve probably needed to export some data to Excel at some point or other. It&#8217;s pretty well accepted that the best library for this is the invaluable [POI](http://poi.apache.org/). It provides a neat wrapper over most Excel functionality. It lets you create or reference a spreadsheet (an `HSSFWorkbook` in POI terms), and then gives you object abstractations for just about any way you might want to manipulate that. Cell styles, formulas, drawing shapes&#8230; I won&#8217;t go into everything but the [cook book](http://poi.apache.org/spreadsheet/quick-guide.html "Example code for POI") is a pretty good starting point for any work you might be doing.

The one thing that&#8217;s always bothered me about POI is that it&#8217;s pretty low-level, you have to manage absolutely every aspect of what you&#8217;re doing. Now it&#8217;s great to be able to access that kind of power, but an abstraction over the top would be good.

That&#8217;s where [jXLS](http://jxls.sourceforge.net/) comes in. It builds on top of POI to provide a templating approach to writing new Excel documents, a decent abstraction for most purposes.

Rather than managing everything from what can quickly become fairly complex Java code, you create a template excel file that contains placeholders for where your data should appear. It&#8217;s smart enough to be able to intelligently expand a collection of beans and create a new row for each one. That can reduce your boilerplate code significantly.

Downsides? The documentation isn&#8217;t the best, and the expression language for some of the more advanced uses is [JEXL](http://commons.apache.org/jexl/), which is pretty horrible. Those, however, aren&#8217;t major concerns. You&#8217;ll rarely need either in depth and, if in doubt, you can always drop down to the POI APIs anyway.

Now, it&#8217;s not to be used in all circumstances, there are still situations that are a little beyond it, but it&#8217;s an extremely good 80/20 API (you get 80% of the use cases made easy, and the other 20% are still possible). Definitely worth a look.