---
id: 650
title: Neater Java
date: 2008-08-12T08:13:01+00:00
author: Gary Fleming
layout: post
guid: http://solitude.vkps.co.uk/?p=650
permalink: /Archives/2008/08/12/neater-java/
categories:
  - Uncategorized
---
In Java 5, as all good Java developers will know, Sun introduced the `enum` type. Since I&#8217;m sure anyone who is interested in what will follow knows that already, I won&#8217;t bore you with the details but there&#8217;s some decent [historical information on Sun&#8217;s reasons](http://java.sun.com/j2se/1.5.0/docs/guide/language/enums.html) available. I&#8217;m going to be talking a little bit about operations on enums, so let&#8217;s get started by defining one:


`
<pre>public enum OrderState{
PENDING, CHECKING_CREDIT, PROCESSING, SHIPPED, RECEIVED, CANCELLED, RETURNED
}</pre>
<p>`

Each of those items in the enumeration represent some state that an order can be in; an order being anything you can buy from an online store. We&#8217;re also going to have a variable called `currentState` which will hold one of these enumerated items. Let&#8217;s not think too hard about how accurate the model is, it&#8217;s really just there as a simple example.

Now imagine that one of our requirements is to enable a button if the currentState is one of several possible states, but not in any other state. For example, the &#8220;Cancel&#8221; button is enabled while the current state is `PENDING`, `PROCESSING`, or `CHECKING_CREDIT`. We&#8217;re doing a containment check, a pretty common operation. The standard Java approach would be:


`
<pre>if(currentState.equals(Order_State.PENDING)|| currentState.equals(Order_State.PROCESSING)|| currentState.equals(Order_State.CHECKING_CREDIT)){
    cancelButton.enable();
}</pre>
<p>`

Yuck! It gets the job done but that is some verbose and ugly code. We know that there&#8217;s got to be a better way, and there is: the [EnumSet](http://java.sun.com/j2se/1.5.0/docs/api/java/util/EnumSet.html) class. EnumSet is a somewhat overlooked Set implementation, specifically for grouping together items from the same Enum. I&#8217;ll let you look into the details of the API, but there are some very handy methods, such as `range()` and `complementOf()`. As a bonus, they&#8217;re also very efficient. How would our example look using an EnumSet?


`
<pre>if(EnumSet.of(Order_State.PENDING, Order_State.PROCESSING, Order_State.CHECKING_CREDIT).contains(currentState)){
    cancelButton.enable();
}</pre>
<p>`

That&#8217;s much better. Rather than a bunch of ORs that look disconnected and have a lot of repeated syntax, we state pretty clearly what we want: build a set of states, and then see whether the current state is part of that set.

There is another neater way of doing this, purely in terms of how syntactically nice it looks, though it requires a little helper function in the Enum. Add the following `in()` method directly to the Enum type:


`
<pre>public boolean in(Order_State... args){
    return EnumSet.copyOf(Arrays.asList(args)).contains(this);
}</pre>
<p>`

Now, we can do our contains check like this:


`
<pre>if(currentState.in(Order_State.PENDING, Order_State.PROCESSING, Order_State.CHECKING_CREDIT)){
    cancelButton.enable();
}</pre>
<p>`

Very tidy: we&#8217;ve got a single method call that expresses exactly what we&#8217;re aiming for in a fluent manner. Now, it does have it&#8217;s downsides like the helper function in the enum, and the fact that EnumSet is more efficient. I&#8217;d suggest, though, that in 99% of cases you&#8217;re not going to be caring about those few extra nanoseconds required to convert to a List first, and that the few seconds of developer time you save every time someone has to read and understand each version more than makes up for it.