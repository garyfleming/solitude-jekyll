---
id: 12434
title: On Organising Music
date: 2011-02-17T21:00:24+00:00
author: Gary Fleming
layout: post
guid: http://solitude.vkps.co.uk/?p=12434
permalink: /Archives/2011/02/17/on-organising-music/
categories:
  - Uncategorized
---
People tend to build up systems for organising their data only after it&#8217;s really needed: we&#8217;ll gather related objects together haphazardly until it&#8217;s too late and we end up with a clutter. Nowhere is this seen more frequently than in people&#8217;s digital music collections.

Invariably, people just shove all of their music into a folder and hope for the best, neither organising or normalising the data. The result is that it&#8217;s difficult to find specific files, many files are missing vital metadata (like the artist name), and doing anything takes far longer than it should.

This need not be the case.

I&#8217;ve shown a few people who have been interested in organising their music collections the strategy I&#8217;ve built-up for keeping clutter free, and I&#8217;m going to share it with you. It&#8217;s not perfect, but it works well for me. (To be honest, I&#8217;m writing this so I can point anyone else who asks towards this guide.)

First of all, if all of your music is relatively popular and well known and you already use it as your main media player, just use iTunes. It has many shortcomings, but if you fit in that sweet spot then save yourself the hassle and just let iTunes take care of it all. That&#8217;s it, you lucky ones can go now. Lesson over.

Still here? Great. For anyone who has explored the world of music beyond iTunes, you&#8217;ll know that it won&#8217;t help fix your metadata or organise your music in a particularly useful way. My solution to that is built largely on top of the tools and music database provided by [MusicBrainz](http://musicbrainz.org/), a collaborative way of discovering music metadata.

A little background: MusicBrainz aims to be the definitive reference source for online music. Over the last few years, volunteers have gathered a tonne of music metadata onto the MusicBrainz website and set about organising it. There are artists, releases, albums, singles, release groups, collaborations, and every piece of music information that you could need; all of it tagged with unique IDs. I say &#8220;every piece&#8221; but that&#8217;s overstating it. There will always be gaps in what MusicBrainz knows. The good news is that if you spot a missing release from your favourite artist, you can add it to MusicBrainz yourself and then everyone else gets to benefit from it.

Back to the task at hand. You&#8217;ll need to grab Picard, the MusicBrainz tagger, from their website. It&#8217;s available for Windows, OS X and Linux; and it&#8217;s ugly as sin on all of them. Seriously, it&#8217;s a terrible looking tool, but it&#8217;s very useful.

Once you&#8217;ve got Picard, the rest is easy:

  1. **Create a Music folder** &#8211; This should be empty at first, and represents the golden copy of your data. Absolutely nothing gets in here that hasn&#8217;t been properly tagged and vetted. It can be anywhere you like, but keep in mind that you&#8217;re going to want to back this up on occasion so keep it somewhere that makes that easy.
  2. **Set-up Picard** &#8211; In the Picard preferences, there is a setting for moving tagged files to a specific directory. Pick your new Music folder. You may also want to change the filename format and tweak some of the other settings, but I leave that up to you. Personally, I use &#8220;artist/release/artist &#8211; track title.mp3&#8221; for filenames.
  3. **Add music to Picard** &#8211; There are a few ways of doing this, but you can drag and drop music directly into the left-hand panel, or use the add files/folders buttons. If you&#8217;ve added music from several albums at once, you probably also want to hit the &#8220;Cluster&#8221; button. This will attempt to organise the files into groups of untagged releases.
  4. **Search for a matching release** &#8211; Select the music you want to tag first, and hit lookup. Musicbrainz will try to use the file&#8217;s existing metadata to find a release that matches.
  5. **Save your matches** &#8211; If the release it finds looks correct, then save it. Your files will be tagged with all the extra metadata MusicBrainz knows about and an ID so you never have to match it up again, and moved to your Music folder. Once saved you can them remove the release from Picard altogether.
  6. **Scan your misses** &#8211; If MusicBrainz either couldn&#8217;t find a match or the match it finds isn&#8217;t correct, you can use the &#8220;Scan&#8221; button to try a different approach. This uses audio fingerprinting (like Shazam) to try and automatically match the music using the audio itself.
  7. **Search Manually** &#8211; Use Picard&#8217;s manual search to try and find the right release. If you find it, a &#8220;Tag&#8221; button will appear in the top-right of the release information. Click that, and the release gets imported into Picard so you can drag the music onto it yourself.
  8. **Do It Yourself** &#8211; Still no luck? Well, it&#8217;s time to get acquainted with the MusicBrainz website to add the artist and/or release yourself. This is pretty straight forward but there&#8217;s plenty of information on [how to contribute](http://wiki.musicbrainz.org/How_To_Contribute). If you think your files already have some of the data you need to add a release, there is a Picard plug-in for creating a release from a Cluster too.

That&#8217;s it. Every time you get new music, follow from step 3 and you&#8217;ll keep your golden copy in good shape.

As a bonus, if you ever decide to reorganise your Music directory, you can import your tagged music into Picard and it&#8217;ll recognise all it. You can then make whatever changes you want (maybe change the filename format) and re-save.

If you happen to be on OS X then the [Max CD ripper](http://sbooth.org/Max/) can automatically tag your files as it rips, as it has Musicbrainz integration. You set it up in the same way as Picard and query MusicBrainz before ripping to pull back all of the metadata.

Hopefully, this will be of some help to someone in organising their music and understanding MusicBrainz.