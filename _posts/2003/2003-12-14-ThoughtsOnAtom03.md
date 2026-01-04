---
id: 230
title: Thoughts On Atom 0.3
date: 2003-12-14T00:35:29+00:00
author: Gary Fleming
excerpt: A few thoughts on the new Atom snapshot
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20031214003529
permalink: /Archives/2003/12/14/ThoughtsOnAtom03/
---
A brand spanking [new Atom snapshot](http://www.mnot.net/drafts/draft-nottingham-atom-format-02.html) is out ([Atom 0.3 examples](http://diveintomark.org/archives/2003/12/13/atom03) are available on diveintomark).

Due to FTP problems, I can&#8217;t upload the new templates at this moment, but I&#8217;ll at least talk about what will change.

To be honest, not a lot has changed. The `link` tag (feed level, and entry level) has changed in syntax (it&#8217;s now an empty tag). It also now requires a `rel` attribute (generally going to be set to &#8220;alternate&#8221;) and a `type` attribute.

The former could allow some interesting and smart parsing of documents (once [the rel values](http://bitworking.org/projects/atom/draft-gregorio-09.html#rfc.section.5.4.1) are bulked out). The latter seems utterly useless. It doesn&#8217;t take into account multiple representations (one of the lovely aspects of a <acronym title="Uniform Resource Indicator">URI</acronym>), or allow for content without a registered media type. It adds nothing (except a lot of extra bytes on a feed).

The new `mode` attribute will make feeds easier to parse, but seems to be lacking a plain text value (currently acceptable values are xml, escaped and base64).

That&#8217;s really about it. I added `type` attributes, changed some syntax and got absolutely no returns from it. At the moment, that particular attribute looks like bloat.