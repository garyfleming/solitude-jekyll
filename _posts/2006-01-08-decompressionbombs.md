---
id: 278
title: Decompression Bombs
date: 2006-01-08T19:22:05+00:00
author: Gary Fleming
excerpt: Wherein I discuss what decompression bombs can do.
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20060108192205
permalink: /Archives/2006/01/08/decompressionbombs/
categories:
  - Uncategorized
---
From random discussions I&#8217;ve had with people over the last few months, it seems to me that not too many people really know about a particularly nasty and cunning form of computer attack: the decompression bomb.

First, think about compressing data. Most of us have used an application like WinZip or some similar tool to make our files smaller, albeit less accessible temporarily. These programs take advantage of how signal to noise ratios work in most representations of data; that is, the way we try to represent information is almost always ineffecient. There are usually techniques available for removing the parts that aren&#8217;t so important, and letting important (or common) information take less space.

For example, the algorithm behind the ZIP programs is largely based on [LZW compression](http://www.dogma.net/markn/articles/lzw/lzw.htm): a technique that collapses common substrings down into single codes. Obviously, I&#8217;ve completely glossed over how it works, but if you want to know the information is out there (any computing scientist worth their salt should have at least an idea of how this sort of thing works).

Using a randomly selected document of, say, English text, you would expect a maximum compression ratio of 10:1. That is, given a 100k file, you would expect a zip file of around 10k. That&#8217;s pretty good compression! The language being used and the specific text will cause the compression ratio to vary greatly, but the principles remain the same.

The thing is, if you carefully construct an example document, you can get a compression ratio much higher. How much higher? MUCH, MUCH higher. For example, if you created a PNG image containing just one colour repeated over and over then you could easily get a 1000:1 ratio. For a text document containing 1 character repeated over and over, it&#8217;s possible to shrink 100Gb to about 6k. Think about that, it is a huge difference: 1.7e7:1.

That&#8217;s all well and good as an interesting experiment, but what does it mean for an average user? Imagine I had constructed one of those zip files that had shrunk 100Gb down to 6k and I sent you that file. If you trusted me, you might try to open it. Therein lies the problem: while you can readily accept the zipped file, the chances that you have the 100Gb of free memory (including virtual memory) to accomodate the decompressed file are bloody slim. When you try to open one of these files, your computer will quickly become overwhelmed and stop responding; all of the free memory having been used up, it can&#8217;t do anything else. You effectively suffer a denial of service attack.

That is what we call a decompression bomb.

There is another factor that could cause problems for people who are careful when opening files: well-meaning programs can open them anyway. If the file arrives on your system (either by explicit downloading or by, say, a mail program fetching it), it&#8217;s likely that anti-virus software installed on your system would then want to check if the file contained any viruses. To do this, it pretty much has to decompress the file in memory, leading to the same problem. Oh dear.

Most modern anti-virus software has some defences against decompression bombs, but they can still cause significant system lock-ups while figuring it out. Perhaps more evil is compressed web content, whether images or GZip encoded <acronym title="HyperText Markup Language">HTML</acronym>. No modern browser has a strong defence against decompression bombs. Relatively small files (100Mb decompressed) are usually handled quite well, in that the browser doesn&#8217;t crash completely, but go much bigger and most systems will run into trouble. Because browsers, sensibly, accept GZip encoding by default, any <acronym title="Uniform Resource Locator">URL</acronym> can hide a problem.

Thankfully, problems don&#8217;t arise much in practice because there is little to be gained from this activity: if you take out someone&#8217;s system, you&#8217;ve annoyed them but you can rarely turn this to your advantage i.e. you can&#8217;t elicitly install spyware.

If you want to see some more figures or examples (at your own risk), then the [AERAsec decompression bomb page](http://www.aerasec.de/security/advisories/decompression-bomb-vulnerability.html) is a great start. It&#8217;s where I got a few of my figures from (so thanks for that!), and has a link to some real examples you can try.

Now, [Decompression Bombs Part 2](http://solitude.vkps.co.uk/Archives/2006/01/11/DecompressionBombsPart2/) outlines some real-life examples and answers a few questions!