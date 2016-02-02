---
id: 617
title: JDOM ClassCastException
date: 2007-10-06T17:13:00+00:00
author: Gary Fleming
layout: post
guid: http://solitude.vkps.co.uk/Archives/2007/10/06/jdom-classcastexception/
permalink: /Archives/2007/10/06/jdom-classcastexception/
categories:
  - Uncategorized
---
I&#8217;ll start by saying that if you&#8217;re not a programmer, you&#8217;re not going to be interested in this post. You might want to run along and [read something better](http://wondermark.com/ "Wondermark comics"). You probably also want to be a Java programmer.

[JDOM](http://www.jdom.org/) is a great Java library for dealing with XML in a reasonably sane way. You turn your XML into an `org.jdom.Document` object (using a handy utility like `SAXBuilder`), and then you can use various query and manipulation tools on it. It does, however, have some fairly silly exceptions.

Recently, I was doing some XPath queries as part of a web-app. Like a good developer, I wrote some unit tests so I knew that the XPaths were correct, the XML conversion was correct, etc. I wrote the actual code to implement the test cases and everything worked fine. Great.

Upon deploying the web-app to the container and running it properly, JDOM throws a `ClassCastException` and says the `Document` is the cause. Bizarre. After a few checks and no luck , we (I say &#8220;we&#8221; because there are now a few interested parties) break out the debugger for a look at the running web-app. [Let me stop for a second to say that debugging running web-apps is a triumph of tooling; very useful stuff.] The created Document looks fine, the code steps through ok until&#8230; bang. The debugger stops working. Ah.

After a lot of head scratching and googling, we finally figure out the problem: JDOM depends on the [Jaxen](http://jaxen.org/) API for XPath. While our unit test container (actually an IDE) has a reference to a copy of Jaxen for an unrelated reason, the deployment doesn&#8217;t. So the problem is one of dependencies.

However, the thing that made this tricky to debug was JDOM throwing an unrelated Exception. A `ClassCastException` seems completely inappropriate here and helped masked the real cause. A `ClassNotFoundException` pointing to the Jaxen library would have a) made sense, and b) pointed us at the real cause.

Lessons:

  1. Libraries are only as sane as the most insane thing they do.
  2. Unit tests start falling apart if the environment in which they are run does not match the final environment. This can be a very subtle problem.
  3. Throwing exceptions is only as useful as the quality of the feedback the exception provides.
  4. Debug, debug, debug. If the debugger fails, don&#8217;t panic.

Here&#8217;s hoping the JDOM guys get rid of that erroneous `ClassCastException` and switch to something a little more helpful.