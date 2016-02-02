---
id: 99
title: How To Design From Spec
date: 2005-12-06T23:18:40+00:00
author: Gary Fleming
excerpt: Wherein I give ropey advice on system sketching.
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20051206231840
permalink: /Archives/2005/12/06/HowToDesignFromSpec/
---
Someone was asking me not too long ago about the best way to approach an assignment in Computing Science. Well, I&#8217;ll tell you, and the same approach works for most decent specification documents for any project in which you&#8217;re going to build something. I believe we call this process &#8220;engineering&#8221; or &#8220;design&#8221;, but let&#8217;s not get hung up on that.

First, get a hard copy of the spec, something you can readily annotate, because the first step is to do exactly that. Comb through the document, word by word, and underline every noun and do a dashed underline of all the verbs connected to those nouns (in a well written spec, this will cover pretty much every verb). Why have we just done this? Well, now you have the basis of the model you&#8217;re building. All those nouns represent the things you&#8217;re going to need to build, and all the verbs represent all the actions that they perform; in OO-programming, those are your Objects and methods.

For step two, find yourself a pen and some paper. Now draw a circle for all of those nouns and connect them with lines which represent the verbs. Think carefully about this! Which objects should be interacting with each other? What are your verbs actually saying? You should now have a pretty good rough design for a system.

Now, take note, this is only a rough design. We&#8217;ve only designed the architecture as a whole, so care still needs to be taken over the implementation of each object and verb (data structures and algorithms). It should, however, give you a decent platform to start from.