---
id: 15463
title: Code for Machines
date: 2011-06-09T19:45:30+00:00
author: Gary Fleming
layout: post
guid: http://solitude.vkps.co.uk/?p=15463
permalink: /Archives/2011/06/09/code-for-machines/
categories:
  - Uncategorized
---
Code for machines. Code for machines. CODE FOR MACHINES.

I&#8217;ve mentioned [Project Lombok](http://projectlombok.org/) before, as [part of my Modern Java series](http://solitude.vkps.co.uk/Archives/2010/04/05/modern-java-lombok/ "Modern Java: Lombok"). It&#8217;s a way of hiding some of the meaningless boilerplate code that machines need to interpret the programmer&#8217;s will; lines of code sacrificed to the compiler gods in the hope that they&#8217;ll do meaningful equality (and hashCode), or print objects nicely for The Log.

I spent a coding eternity (a year and a half) having my life made easy by Lombok: no more boilerplate getters and setters, no screen-filling equals methods that have the semantics that anyone half-way competent would have guessed, and no more toString(), that semi-mandatory serpent of concatenation. It was a paradise of clean, expressive code, built in the image of the domain. You could forget Lombok was even there, as it quietly did all the bad code for you.

That was then.

Now, having had Lombok ripped from my toolset, I realise just how much I miss it, and more importantly that it shouldn&#8217;t have to exist at all.

Classes shouldn&#8217;t have to be 90% boilerplate to make three fields behave in what is a defacto standard manner. Chances are the getters/setters are going to be plain vanilla, the toString is going to concatenate the lot together, and the equals/hashCode are going to follow the recommendation that was laid down as law **ON PENALTY OF DEATH** in Effective Java. Everyone who programs at a decent level in Java knows this; absolutely everyone except for Java itself.

I&#8217;m extremely grateful that Lombok exists to workaround the broken parts of the language, but it shouldn&#8217;t have to. Everything that Lombok does should be in the core. It&#8217;s time we had genuine properties. It&#8217;s time we had less noise, and more signal. Java is our stumbling, drunk of a language; and Lombok is the poor spouse that has to drag its sorry shell to its bed every night.

These missing parts, these default behaviours in all but implementation, are pieces of code meant purely for machines. We don&#8217;t need code for machines. We never need code for machines.