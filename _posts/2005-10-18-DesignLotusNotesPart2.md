---
id: 304
title: 'Design: Lotus Notes Part 2'
date: 2005-10-18T22:24:31+00:00
author: Gary Fleming
excerpt: Wherein I look at Lotus Notes. Again.
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20051018222431
permalink: /Archives/2005/10/18/DesignLotusNotesPart2/
---
You think my last post on the [design of Lotus Notes](/Archives/2005/10/13/DesignLotusNotes) was all there was wrong with it? You&#8217;ve never even seen it have you? Remember we&#8217;re looking at v5 so these <del>bugs</del> gaping holes in design may have been fixed later. Four more:

  * **Back and Forward** &#8211; I have no idea what kind of rationale is behind the back and forward navigational buttons in Notes, but it does not conform to our Earth logic. Instead of having a back button that sensibly means go back within the current context (i.e. the current tab), it goes back through different tabs. This is particularly infuriating in browser mode, where there is not necessarily any other easy way of going back a page. It&#8217;s also easy for it to just get stuck and throw away the history, stranding you where you are. Good move. The forward button? Well, it doesn&#8217;t work so much. It goes forwards when it wants to, but not always.
  * **Attach** &#8211; The Attach icon only works if a new email message body is in focus. If you&#8217;re in any of the header fields, you can&#8217;t attach things. This might be remotely excusable if being out of the correct context disabled the attach icon but it doesn&#8217;t. Instead, clicking it produces an error. Oh yes, and a minor point: it uses the wrong verb for attachments. You do not &#8220;create&#8221; an attachment, you &#8220;add&#8221; it or &#8220;attach&#8221; it.
  * **Scroll Bar Sizing** &#8211; Notes gets it&#8217;s scroll bar usage hugely wrong. Think of the scroll bar, from top to bottom, as representing the length of the associated document. The scroll block (the bit you can grab to drag up and down) should be proportional on the bar to the size of a single page of the document in the view port. So, if a document takes up 2 pages (i.e. it&#8217;s twice the size of the view port) then the scroll block should be half the size of the scroll bar. This sets up all sorts of great visual cues and feedback. Notes ignores that. It sets it to the minimum size allowed. As a side effect of this, it also doesn&#8217;t implement smooth scrolling; it&#8217;s perfectly possible to drag the scroll block down a bit and have it snap straight back to where it was previously. Oh yeah, and scroll wheels don&#8217;t work either. Kudos to the Lotus team for ignoring a really simple and highly effective bit of standard design.
  * **Crash** &#8211; If the program crashes (which it will), you _must_ do an OS restart if you want to open Notes again. So, it messes up and you have to restart everything. That&#8217;s failing gracefully for you. This will happen when you&#8217;re running several server processes and waiting for an email to help sort an important issue.

That&#8217;ll do for now.