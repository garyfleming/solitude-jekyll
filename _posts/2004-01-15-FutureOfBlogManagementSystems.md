---
id: 422
title: Future Of Blog Management Systems
date: 2004-01-15T23:39:21+00:00
author: Gary Fleming
excerpt: A brief look at features that might be found in future blog managerment systems
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20040115233921
permalink: /Archives/2004/01/15/FutureOfBlogManagementSystems/
---
After recently deciding that my own <acronym title="Blog Management Systems">BMS</acronym> (a subset of the much more powerful <acronym title="Content Management Systems">CMS</acronym>) wasn&#8217;t up to scratch, I began thinking about the main features that a future <acronym title="Blog Management Systems">BMS</acronym> should have.

The basic starting point should be the [ultimate Weblogging system](http://mpt.phrasewise.com/2003/05/02). It is slightly out of date, but most of those features are the building blocks we need for a solid foundation.

There are, however, plently of features that can be added to that list to take it much further. Most are features for users, some are for developers:

  * **Storage**: Potential for multiple storage systems (we&#8217;ll refer to them as **Archives**) of arbitrary type. That means the Archives can be databases, structures in the filesystem, ram drives, or any other bizarre contraption you can imagine. We want multiple storage systems so logically separate entries can be left separate. For example, the main blog entries and sidebar reading list entries are almost always unconnected.

  * **Extensible Text Formatter**: Whatever method is used to add an entry, the processing that goes on behind the scenes to turn it into the stored format should be extensible and liberal. The bare minimum should be accepting plain text, markup, [textile-formatted text](http://www.textism.com/tools/textile/), or a mixture of those. Additionally, modules could be dropped in to allow parsing of TeX, mathML or any other format.
    
    It would include validation processes to check that character encodings were correct, the final output was correct (i.e. it validates as the stored output format), and any other functions that the user wanted (spell checking, anyone?).

  * **Advanced Recall**: As many ways to recall entries as possible. Current methods (permalinks and viewable archives) are fine for the moment, but throw in search and XPath queries and we start to build systems that can be viewed in ways the developers can&#8217;t imagine.

  * **Dynamic Categories**: A sibling to Advanced Recall, [Jon Udell](http://weblog.infoworld.com/udell/) discusses the possibilities of [dynamic categories](http://weblog.infoworld.com/udell/2004/01/15.html).

  * **Syndication**: All formats should be supported natively. Let the market forces fight over which one is adopted widely while allowing users to choose the format they prefer, whether it be <acronym title="Rich Site Summary">RSS</acronym>, Atom, <acronym title="Epistula Syndication Format">ESF</acronym> or some other format.

  * **Auto-Updating**: New features should be added automatically where possible. New text formatters, and formats should be downloaded and set-up transparently. End users rarely need to know how this is done.

All of this is achievable today. In the future, I may write more about how several of the features are possible. Feel free to add more suggestions (or, indeed, question the current batch) in comments.