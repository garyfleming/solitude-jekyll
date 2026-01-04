---
id: 654
title: Fixing a Gap in Javascript
date: 2008-08-19T00:13:25+00:00
author: Gary Fleming
layout: post
guid: http://solitude.vkps.co.uk/?p=654
permalink: /Archives/2008/08/19/fixing-a-gap-in-javascript/
categories:
  - Uncategorized
tags:
  - Code
  - Javascript
  - Tutorial
---
An interesting problem: a bunch of [Struts Nested](http://struts.apache.org/1.2.8/userGuide/dev_nested.html) tags generate HTML. Separately, we write some Javascript that makes use of `getElementById()` to find some of the generated elements. This works in Internet Explorer, but fails miserably in [FireFox](http://www.mozilla.com/firefox/). Why?

Well, it turns out that Struts Nested tags generate elements that have a `name` attribute but not an `id`. Separately, IE actually does the wrong thing with `getElementById()`: if a search by id fails, it will try to match by name; that&#8217;s fundamentally broken. It&#8217;d be fine if a bunch of libraries and other functions didn&#8217;t prefer the use of ids, and if other browsers did the same thing. They don&#8217;t and we&#8217;re stuck with the mess. Let&#8217;s clean it up.

The right thing to do would be to [cripple the IE version into the correct behaviour](http://www.sixteensmallstones.org/ie-javascript-bugs-overriding-internet-explorers-documentgetelementbyid-to-be-w3c-compliant-exposes-an-additional-bug-in-getattributes). Now everyone agrees on what should happen.

Let&#8217;s assume, though, that this isn&#8217;t possible, that there&#8217;s a large dependency on this behaviour that cannot be changed for whatever reason: no access to the JS, unwieldy codebase that we don&#8217;t have time to fix straight away (bad!), or something else. It&#8217;s not really that important. If you need to go for the wrong solution, here&#8217;s how:


`
<pre>
document.nativeGetById = document.getElementById;
document.getElementById = function(id){
  var el = document.nativeGetById(id);
  if(el == null){
    el = document.getElementsByName(id)[0];
    if(el != null){el.id=id;}
  }
  return el;
}
</pre>
<p>`

That&#8217;ll work and it&#8217;ll even make sure subsequent calls use the native version of the function for extra speed. Now, there are a couple of small issues with this function and some pretty obvious optimisations, but I&#8217;ll leave that as an exercise for the reader.