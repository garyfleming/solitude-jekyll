---
id: 716
title: Spotify and the Queue Problem
date: 2009-02-08T22:39:49+00:00
author: Gary Fleming
layout: post
guid: http://solitude.vkps.co.uk/?p=716
permalink: /Archives/2009/02/08/spotify-and-the-queue-problem/
categories:
  - Uncategorized
tags:
  - Music
  - Spotify
  - Technical
---
I&#8217;m sure most people will have heard of it already but [Spotify](http://www.spotify.com/) is probably the most interesting music service I&#8217;ve seen since the Napster days (the first version of Napster that is, not the current one).

You find an invite for it (there are plenty freely available just now), sign-up for free and you can then access a massive back catalogue of music to stream whenever you like. The streaming seems very reliable, and the selection is pretty good: this isn&#8217;t just small artists, all the major labels are represented. The cost? You either take it for free and listen to the occassional advert (all seem pretty unobtrusive so far), or pay £10 a month to stop the adverts.

It&#8217;s different from something like [last.fm](http://www.last.fm/)&#8216;s streaming service, because you queue up a list of songs that you want to hear, rather than just starting somewhere and having new music pushed at you (which is not a bad thing in and of itself).

If Spotify is successful, then it&#8217;ll be a game-changer. I won&#8217;t be surprised if, within a few years, Spotify is _the_ way to get music, just as YouTube is _the_ way to get video and Google is _the_ way to find information. You won&#8217;t buy new music when you want to hear that one song you&#8217;ve not heard in a while, you&#8217;ll Spotify it.

It&#8217;s fair to say I like it and I think it works incredibly, having tried it on Windows, Mac and on Linux (via [WINE](http://www.winehq.org/)). It looks pretty slick across the board. It does, however, have some odd behaviour in places, which I&#8217;d like to detail.

The playback functionality is built around the idea of a &#8220;play queue&#8221;: a list that holds all the songs you&#8217;ve selected to play. When they&#8217;ve played, they leave the queue and appear in your history. That&#8217;s pretty straightforward, but the manner in which you add songs to the queue is, on occassion, counter-intuitive. This is going to take a little explanation.

There are two broad routes for finding music to add to the queue. You can either use a playlist (which, neatly, are shareable over the web), or you can use the fairly comprehensive search options. Once you&#8217;ve found the music you want with either route, you then have two actions you can take: play (the default action) and queue. The difference between the two, and how they interact with the two find methods causes some issues.

**Problem #1: There are two different types of queue item.** This is lengthy but keep with me, it&#8217;ll help you understand the rest. Let&#8217;s say you search for and find an album. You double-click the first track and start listening. As it finishes, Spotify automatically plays the next track as it has added the whole album to the play queue. Satisfied that it&#8217;ll keep going you make another selection and queue it i.e. not &#8220;play&#8221; it straight away as you want to hear all the items from the first album which, after all, you can see in your play queue. When the next song starts you might be surprised to learn that the next track to play is not the next track from the first album, it&#8217;s the first track from your second selection.

What happened? Well, it turns out Spotify has active and passive queue items. On any search, a play will actively queue the item you selected and passively queue everything else. The play queue is sorted so that passively queued items are **always** after actively queued items. Using the play action creates one active item and potentially many passive items. Using the queue action creates an active item for every item you have selected.

When you made your first album selection (using the play action), the first item was actively queued and the rest were passively queued. When you made your second selection (using the queue action), it jumped in front of all those other tracks. That&#8217;s pretty counter-intuitive, and is **Problem #1**.

You might think, &#8220;Ok, I understand that and can avoid it&#8221;. Well, slow down, there&#8217;s more.

**Problem #2: You can&#8217;t play an entire selection**. If you thought that the solution to the above problem was to select the entire first album and use the play action, you&#8217;d be mistaken. Although Spotify will let you make a selection and use the play action while on that selection, it really only plays one of the tracks i.e. it ignores the fact you have made a selection. You can make a selection, use the queue action, and then delete everything before it already in your play queue, but that&#8217;s a bit of a roundabout way of doing things. Better behaviour? Enable the play action to operate over a selection, or disable it when a selection has been made. Or, model intents by adding a &#8220;Queue album&#8221; action.

**Problem #3: Queing passive queue items makes copies of them**. So maybe you thought the solution is to use the play action on the first item, thus passively queueing the rest, going to the play queue and selecting queue on the remaining items? Well, that works. You&#8217;ll have the entire thing actively queued. The problem is that actively queuing something like that doesn&#8217;t remove the passive copy. As soon as the entire album finishes, you&#8217;ll probably be surprised to hear the second track onwards again. The passive items weren&#8217;t removed, they were just copied to the active part of the queue. Better behaviour? Making a passive item an active item (using the queue action) should jusy promote it, and not copy it.

**Problem #4: Passive queue items can&#8217;t be removed easily**. Maybe you thought the solution to problem #3 is to just remove the passive items from the queue, thus leaving one active copy. I&#8217;m afraid not. You **cannot** remove passively queued items, without wiping out your entire play queue. This is a massive cause of irritation. Better behaviour? Activate the delete option for all items, thus allowing the removal of passive items.

**Problem #5: Search and passive queuing can interact too broadly**. You&#8217;ve learned to jump through the hoops above and now know how to queue things properly. Good. Let&#8217;s say you want to hear one song, and do a search for it. The search results return 10 similarly titled tracks and the one you wanted. You play the one you wanted. Can you guess what happens? Those completely unrelated tracks by unrelated artists in unrelated genres all got passively queued and you&#8217;re now listening to them. Best of all, because of problem #4 you can&#8217;t remove them without wiping out your queue entirely. Better behaviour? Restrict the passive queueing of items such that only items from the same artist/album get passively queued when searching by artist or track. A special case here is when the track is from a compilation, where you might want to queue the whole thing.

Now, I know that comes across as negative, but let me reiterate that I really like Spotify (I&#8217;ve been listening to [genre:britpop](spotify:genre:britpop) on it whilst writing this), and would just like to see some basic usability improvements.

Here&#8217;s hoping the service makes it.