---
title: INSERT TITLE HERE
date: 3999-12-31T16:30:16+00:00
author: Gary Fleming
layout: post
permalink: /:year/:month/:title/
categories:
  - Uncategorized
---

... post(s) about patterns to help people get their heads around hateoas
... probably skip content-type/versioning negotiation (which is important to hateoas)
... focus on what you might use links for *in an API* (mostly the same as a browser)
... more formally focus on patterns for hypermedia controls within hateoas

Simple referential navigation... not sure this is really that interesting in an API context
Exploring hierarchy... Proceding through tree-like hierarchy to go into more detail between related entities
Exploring abstraction... like hierarchy but for a single large entity.
Search... mechanisms for exploring a dataset
Paging... obvious. Complicated filtering/searching combined.
Polls... Making choices

Possibly consider the interactions in a large real-life API. Twitter is interesting. Not sure how the API is _actually_ implemented but it probably has a bunch of the above (and more).