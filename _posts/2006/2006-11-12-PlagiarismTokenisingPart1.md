---
id: 334
title: 'Plagiarism: Tokenising, Part 1'
date: 2006-11-12T17:08:09+00:00
author: Gary Fleming
excerpt: We begin properly by discussing the basics of tokenising.
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20061112170809
permalink: /Archives/2006/11/12/PlagiarismTokenisingPart1/
---
After a long break since our [plagiarism introduction](/Archives/2006/10/17/PlagiarismIntroduction), it&#8217;s time to get started on the real work. I would go and get some coffee before reading, because this is going to take a while.

The first thing you really need to know about implementing a plagiarism detection system, and most natural language processors, is called **tokenising**: the process of taking a document and splitting it into smaller parts before the real analysis can take place.

What exactly do I mean by that? Say you have a 300 students all handing in essays or a piece of code (we will choose the latter simply because the syntax can be easier), and you want to compare them for the purpose of finding plagiarists. We&#8217;ll say that one of these pieces of code includes the line &#8220;`for i in 1..10 loop`&#8220;. The computer does not understand that snippet, or the language it is written in (ADA, incidentally). For it to compare it to other snippets, it must first do what the human brain has evolved to do naturally: split the sentences into words and extract meaning from the words. Without splitting up a page somewhat, you can understand it far less well than you can if you break it up, and you have less tolerance for slight differences when comparing documents. Same applies for the computer.

That&#8217;s not strictly true. The computer can just read those documents in as one big long string and compare them the dumb way, character by character. This, however, gives you much less tolerance for slight changes when comparing two very similar documents. A series of changes, even simple ones like adding spaces or punctuation, would make two very similar documents look different. This is a **bad thing**. We don&#8217;t want the cheaters to be able to beat our system by making small changes. If they make a lot of changes, that makes our life harder (are they still really cheating if they&#8217;ve changed everything?) but we certainly don&#8217;t want people them getting away with small changes.

So, we take the document, figure out what constitutes a &#8220;word&#8221; in the language of the document, and turn the document into a list of these &#8220;words&#8221;. We call these words **tokens**. We can compare tokens much more easily and efficiently than comparing full strings, and with more tolerance for change. So, our earlier example might be broken up like this: `["for", "i", "in", "1", "..", "10", "loop"]`

Anyone who is being astute will notice that I just skipped over the real crux of the problem: how do we determine what a token is? Well, that really depends on the language that the document is in and, to an extent, the domain. Consider:

  * An essay written in English is very different from an essay written in Spanish.
  * An essay written in English is very different from a Java source file.
  * An essay about biology is likely very different (in language and style) from an essay about history.

What you really need to understand about tokenising is that it is:

  1. **Language specific** &#8211; in that to get anywhere worthwhile with your tokeninsing, you will need a different tokeniser for each language.
  2. **Domain specific** &#8211; to get the most out of your tokeniser, it needs to be tuned to the domain of the topic (i.e. History, medicine etc) to better take advantage of how people in that domain exploit and use the language.

The latter of these two I will leave as an exercise to the reader, and not discuss much further. The former is the core of the problem we want to solve: how do we create a tokeniser for a specific language? Easy, we look at the **grammar** of the language.

Now, I know some people just shuddered at the mention of the word &#8220;grammar&#8221;, but it&#8217;s not so bad. The grammar for a language is simply the set of rules that allow for the construction of language features, a bunch of very simple rules that state which tokens can appear where and what form they should take when near other tokens. Thankfully, just about every computer language has a detailed specified grammar somewhere. If you&#8217;re suffering insomnia, have a look at the [Ada syntax](http://www.adahome.com/rm95/rm9x-P.html) or the [Java grammar](http://java.sun.com/docs/books/jls/second_edition/html/syntax.doc.html). Thrilling stuff, I know.

You know your language, you have your grammar, now you need a **parser**. The parser takes the grammar and documents you provide, and spits out your tokens. This is a well-understood area, and you may even have some tools to do it for you. If not there are plenty of tools available that will parse for you: `yacc`, `bison` and `lexx` are just a few command line tools that will parse documents. I would recommend [SableCC](http://sablecc.org/) if you&#8217;re writing your plagiarism detection system in Java: it has a decent <acronym title="Application Interface">API</acronym> and does most of the work for you. You just need to take the trees it produces (for compiler use), and flatten them into an array; a trivial task that amounts to an in-order walk.

Wow! We&#8217;ve now tokenised the document. End of story.

Well, not quite. The problem with using a pure parser-and-grammar approach is that it doesn&#8217;t work if your input (your code snippets or essays) are malformed. If even one part of your document breaks a rule, your parser is going to complain. Most will refuse to process it further. Handling this is your responsibility, and it&#8217;s not an easy problem to solve. The simplest solution I can suggest is falling back to white-space tokenising when something fails and logging the problem, feeding a better solution into the next version of your system. It&#8217;s hardly ideal. Also, always remember [Postel&#8217;s law](http://en.wikipedia.org/wiki/Robustness_Principle) and consider that just because someone doesn&#8217;t fully follow the rules of a language, that does not mean they should get away with plagiarism.

Are we done now? No, but we&#8217;ve done enough for today. More tokenising soon.