---
id: 643
title: Postcode Lookups Suck
date: 2008-07-20T19:07:34+00:00
author: Gary Fleming
layout: post
guid: http://solitude.vkps.co.uk/?p=643
permalink: /Archives/2008/07/20/postcode-lookups-suck/
categories:
  - Uncategorized
---
Websites which have address forms for UK residences, whether for buying new products, paying bills or registering interest, I have a simple request: do not presume your database knows my address better than me.

For the benefit of non-UK readers, let me explain. The UK has a system originally designed for mail delivery called the Postcode, which is similar to the US zip code system. Unlike zip codes, it&#8217;s far more granular, generally resolving to a handful of addresses. In fact, most of the time, if you have a post code and house number, you can uniquely identify a particular delivery address. That&#8217;s all that is needed: a **G1 4BQ** and a **35**.

In 7 characters, most people can be readily identified. That&#8217;s the [power of postcodes](http://puffbox.com/2008/06/23/the-power-of-postcodes/).

A lot of UK websites take this as an absolute fact with no room for error. They take the data from the Post Office, see that it works for them, and forget about it. You either fit the pattern, or your house doesn&#8217;t exist. I&#8217;m sure you can see where I&#8217;m going with this.

One big problem is that large parts of the UK have some form of communal housing: tenement blocks, modern apartment blocks, high-rises etc. This is where things break down. As well as having a house number (the 35 above), they will also have a flat number like 3/2 (floor 3, flat 2), 4D (floor 4, flat D) or any other variation on the above. This is where things get very hairy:

  * Most post-code lookup systems will offer you a list of possible matches, which often miss some of the variations. That&#8217;s incomplete reference data.
  * Most post-code lookup systems are never given updated data (compile once and you&#8217;re done). That&#8217;s poor data management.
  * Most post-code lookup systems don&#8217;t allow for changes to addresses. That&#8217;s, again, poor data management.
  * Most systems don&#8217;t allow for even more complex forms, where a flat has a house number (35, two part flat number (3/2), and a block number (D); the combinations of these can come in endless forms (D3/2, 35 Example St vs. Flat 2, Floor 3, Block D, 35 Example St).

Most systems will fall flat in the face of any of these. While fixing these problems directly is hard (to near enough impossible), there&#8217;s a very simple solution originally posited by Postel:

> Be conservative in what you do; be liberal in what you accept from others

Yes, it&#8217;s the simple: just accept whatever your users, _the people who live at the address_, put into your form. They know the correct answer far better than you ever will, so believe them when they put something in. If you want to help them by offering a post-code lookup, that&#8217;s fine, encouraged even; but don&#8217;t insist that they use it. That just hurts the usability of your system.