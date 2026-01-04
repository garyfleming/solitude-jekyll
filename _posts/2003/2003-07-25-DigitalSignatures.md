---
id: 269
title: Digital Signatures
date: 2003-07-25T14:47:51+00:00
author: Gary Fleming
excerpt: Signing comments
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20030725144751
permalink: /Archives/2003/07/25/DigitalSignatures/
---
[Simon Willison](http://simon.incutio.com/) has been talking about [comment authentication](http://simon.incutio.com/archive/2003/07/24/commentAuthenticationPrototype), even building a prototype (which seems to act a little flaky to me &#8211; but it is just a prototype). I like the idea, but it will always have trust issues and currently has a reasonably high entry barrier.

For one, you have to trust the server doing the authentication work and storage. If it is comprimised (either by the human running it or through technical means), then the whole system becomes worthless. This is obviously a big concern for such a comment authentication system, and one which is very difficult to overcome (although, I&#8217;m pretty sure Simon can be trusted).

The current implementation, however, has a high barrier entry. It requires that a person has an email address and control of a website. The former is not so much a problem, but the latter is. How many web users actually have a website? I&#8217;d imagine it&#8217;s a fairly small percentage. On this, the system severely falls down.

I&#8217;ll keep watching this one for when I eventually provide comments (hopefully not as far away as it could be).