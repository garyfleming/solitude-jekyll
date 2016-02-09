---
title: Hexagonal for Java
-- date: unpublished
author: Gary Fleming
layout: post
permalink: /:year/:month/:title
categories:
  - Code
---

Opening

- Premise

-- hexagonal for typical java toolset i.e. maybe maven, spring, hibernate, etc (if you use alternatives to these, you'll know where to switch them out).

-- Why do this at all?

- What is hexagonal?

-- Brief explanation/history

-- Other domains people are exploring it (lots of ruby -- research this better)

-- What are the benefits?

========

Structured sections (some attempt at an order)

========

Other sections (no order yet)

- Dependencies

-- Minimal. Start with the domain as clean as possible

- Structure (maven multi-module)

-- Domain

-- business rules

-- providers

-- Note that there can be more layers if necessary but keep structure

-- Annotations - Spring? JAXB? Bean validation?

-- Mappings

========