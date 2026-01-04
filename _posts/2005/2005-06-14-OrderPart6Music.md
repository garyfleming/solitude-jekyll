---
id: 581
title: 'Order, Part 6: Music'
date: 2005-06-14T14:13:22+00:00
author: Gary Fleming
excerpt: Wherein structuring music folders is shown to be a pain in the arse.
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20050614141322
permalink: /Archives/2005/06/14/OrderPart6Music/
---
Music: we all like it. MP3s: we&#8217;ve all got them. A problem: how should these files be structured on your computer.

First of all, the operations I want to be able to perform:

  * Selecting all music by an artist.
  * Selecting a specific release by an artist.
  * Being able to pick individual tracks with relative ease.
  * Creating a snapshot and being able to see what files have changed or been added since that snapshot (for the purposes of backing up efficiently).

Originally, I had them all in a single folder called &#8220;Music&#8221;, with individual track titles in the form &#8220;Artist &#8211; Song.mp3&#8221;. This worked well for a while, but started falling on its arse when the song count got over a few thousand. Thanks to some of internal handling, Windows does not like folders with thousands of items in them. So I&#8217;ve been trying to structure them in another way and have a few problems that I want to try and work out with the help of you, the kind reader.

The most obvious thing to do is to create a folder for each artist and then a sub-folder for each release. So now we have &#8220;Artist/Album/Artist &#8211; Song.mp3&#8221;. Now, you may think that, given this structure, the &#8220;Artist&#8221; in the filename is redundant. Well, it is but I&#8217;m keeping it because I know that if files need copied or moved around it&#8217;ll be easier to have this present in the name. Also, I want the filename part to be unique (for this kind of moving around) and I want to minimise redundancy. This configuration throws up a bunch of edge cases that I&#8217;m not completely sure of the best way to resolve:

  * **Singles** &#8211; There are two problems with singles. The first is that if the main track is identical to the album version of the track then the uniqueness of filenames might be lost and data may be replicated. So, do you keep the version of the file with the album, single or both? If the title track is a different mix (a radio edit, say), it&#8217;s easy enough to keep both and put &#8220;(Radio Edit)&#8221; in the filename. The second problem is that of multi-format singles. <acronym title="Compact Disk">CD</acronym>, <acronym title="Digital Video Disc">DVD</acronym>, vinyl: do you create a subfolder for each release or one for the singles as a whole? If the former, which subfolder gets the A-side if it is the same across all formats?
  * **Split Singles** &#8211; The system, as it stands, assumes that one release means one artist. In the case of either a split single or a compilation this does not hold true. How do you deal with this? If you put it into one of the artists folders, then you lose the connection to the other. If you create a new split artist folder (&#8220;artist1 and artist2&#8221;), then you disassociate from both artists.
  * **Compilations** &#8211; An extension of the above problem: how do you deal with multi-artist compilations? A &#8220;Various/Album/Artist &#8211; Track.mp3&#8221; folder set up? How, then, do you connect an individual artist to their contribution?
  * **Featuring** &#8211; A weaker edge case. When a particular track features another artist (&#8220;Nofx &#8211; Go Your Own Way (ft. Greg Graffin)&#8221;), how do you tie that in? After the track title (as in the example, or as part of the artist? How do you connect the song to all artists? In the example, I&#8217;m more interested in the featured artist, but it could plainly be the other way.
  * **Rarities** &#8211; There are always songs which exist without official release or outside of any real collection. I tend to call these rarities (whether they are actually hard to find or not). How do they fit? At the moment, I go with the &#8220;Artist/Artist Rarities&#8221; structure. Better ideas?

Suggestions and ideas for some or all of these most definitely welcome (that being the point of this post and all).

[For anyone wondering why this is Order part 6, and not part 5, I accidentally created two parts 4 and it&#8217;s too much hassle to fix now.]