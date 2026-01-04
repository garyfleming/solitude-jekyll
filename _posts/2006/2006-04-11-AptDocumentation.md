---
id: 349
title: Apt Documentation
date: 2006-04-11T00:31:28+00:00
author: Gary Fleming
excerpt: A guide to the minimum help you need to provide for your programs and APIs.
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20060411003128
permalink: /Archives/2006/04/11/AptDocumentation/
---
So you&#8217;ve released a new application or library? Congratulations, and thanks for supporting the software community in some way. GenericoApi 1.0 sounds great and I&#8217;d like to use it for this great idea I have, so where is the documentation? Yeah, I can see the Javadoc methods on your site but&#8230; oh, that&#8217;s it? Right&#8230;

I&#8217;ve been in that situation far too many times. So let&#8217;s clarify something: if you create a library that is to be worth something you&#8217;re going to need the following.

  * A high level overview. Far too many projects (SourceForge sites, I&#8217;m looking at you) think that just because a visitor ended up on their page that said visitor knows exactly what the project is about. This is rarely the case. I&#8217;ve said this before: a clear description of what you do at the top of your front page, always.
  * A technical overview. A very detailed overview of everything your <acronym title="Application Interface">API</acronym>/app can do, catering for the most knowledgable, hardcore contingent of your userbase. This is important for both early adoption and to show you actually know what you are doing; impress the cult leaders and the rest will follow.
  * The API documentation. If you&#8217;re writing in Java, then I want to see a detailed and descriptive set of Javadoc documentation. This should make very few assumptions about knowledge of the system you use, and any assumptions should be clearly linked. It should be clear how to construct and use the main objects in your API immediately.
  * A tutorial. Let me say this clearly: **this is the most important thing you can do**. Write a tutorial which goes through the different parts of your API in a logical order, making _no_ assumptions about what the user knows. The tutorial should be as large as it has to be, taking up clearly defined chapters if necessary. Each section, or the complete piece, should show examples that build up into a working system, which covers a use case of your API. Any user who has taken the time to read and understand your tutorial, taking into account the burden of explanation remains entirely with the author, should be a near expert with your API and should be able to fully understand the previous three important documents (both overviews and the API).

Do this and you will be fine. Do not and you will frustrate and alienate part of your potential userbase.