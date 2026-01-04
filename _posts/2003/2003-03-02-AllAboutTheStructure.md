---
id: 373
title: All About The Structure
date: 2003-03-02T22:12:46+00:00
author: Gary Fleming
excerpt: Why web design is, primarily, information management, not graphic design
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20030302221246
permalink: /Archives/2003/03/02/AllAboutTheStructure/
---
In response to my [Graphic Vs. Web Design article](http://solitude.vkps.co.uk/News/Index.php?ArtID=20030301233749), someone said:

> So, when I begin by opening photoshop and making everything look cool, am I doing it all wrong?

Yes and no. It&#8217;s generally a good step to have a clear design in your head before starting anything (although, don&#8217;t be afraid to deviate from a preliminary design). But it should never be more than a concept.

Imagine what you want to do visually, see the words flow together in your sea of colours. Paint this picture, if you must, in Photoshop (or whatever package you want to use). Done? Now, throw it away immediately.

Let&#8217;s start again properly: take the content you want on a page and separate it into logical sections (content, navigation, header etc). We&#8217;ll do this (in mark-up) using the DIV tag. Importantly, give each of these top-level DIV&#8217;s a unique ID attribute. If each of those sections needs broken down further, then do that too (although you might be looking at giving these DIV&#8217;s generic classes, rather than ID&#8217;s). Iterate, until you&#8217;ve chopped your site into the smallest reasonable sections.

Take this site as an example. It has 3 top-level sections: Content, Navigation and Header. Now, it so happens that I only wanted a single title in the header, so DIV tags were omitted. They were unnecessary since the (unique) H1 tag takes care of anything that a DIV could. Navigation is broken into a several sections, but I&#8217;ll focus on the Content section.

First off, the Content DIV, has a header (H2). This is important since everything that follows is subordinate to this. In an outline view, you can easily determine that the content is part of &#8220;Happenings&#8221; (my own very special way of saying &#8220;News&#8221;). After this, each piece of content is broken into &#8220;BlogItem&#8221;&#8216;s (a second-level DIV with a &#8220;BlogItem&#8221; class attribute attached to each one). These consist of 4 parts: A _heading_ (H3), the _date_ (a P with a date class attached), the _content_ itself and a _permanent_ link to that BlogItem.

The _heading_ is self-explanatory: each part of a document should have an appropriate title which, in this case, happens to be at the H3 level since it is within elements containing H1 and H2 tags (the parent sections of our BlogItem&#8217;s). We could add further subheadings in our content, if necessary.

The _date_ is a little more dubious. Some would make it an H4 heading. I disagree. In an outline of the document, nobody cares about the date something is posted. We would skim through the headings until we saw something that interests us, not when it was posted (&#8220;Oh yeah, this was posted on the 23rd February. I **must** read&#8221;). But it _is_ useful meta-data. We can use it as frame of reference to put the content in.

The _content_ itself is quite self-explanatory too: it&#8217;s what you wanted on the page. It&#8217;s why we&#8217;ve went to these lengths to create a well-structured document. Type it in. (There&#8217;s a lot to be said about marking-up content, but that goes way beyond the scope of this article &#8211; another time perhaps). Note that an article is logically separated into paragraphs, and these paragraphs into sentences. This is what we&#8217;re doing here, and on a larger scale.

Finally, we have a _permanent link_ to each individual BlogItem. This is, again, meta-data. It&#8217;s useful to have an access mechanism to a given piece of content at the end (or beginning) of that content. We can then look back at it whenever we feel the need, without having to sift through the rest of the data structure.

I&#8217;m not saying this structure should be adopted for other sites, it just made sense for _this_ site. Separate your own information into logical sections, to get a decent structure for _your_ site.

Now I can already see the graphic designers and table fanatics at the back saying: &#8220;That&#8217;s not web design, it&#8217;s information management&#8221;. Well, yes, it is information management, and it&#8217;s also **exactly** what web design is based on. Now that we have a logical data structure for our information, we can make it look however we like. This is a secondary concern.

Because of our detailed structure (complete with IDs and classes), we can now generically access every similar item on every page in one clean swoop. That means that redesigning a site will now take minutes, rather than weeks. The data structure, free from style of any form, is mouldable at a higher level. For anyone who&#8217;s strived to change a site or make it look good in a brand new browser (how are those new table hacks coming along?), this will mean a lot. Actually styling the page is, again, beyond the scope of this article, but will be resolved at a later date.

To summarise, style should always come after structure. Once we have a structure, we can do what we like with it to make it look great. The same can&#8217;t be said in reverse.