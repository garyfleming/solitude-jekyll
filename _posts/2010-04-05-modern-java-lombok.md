---
id: 941
title: 'Modern Java: Lombok'
date: 2010-04-05T16:53:57+00:00
author: Gary Fleming
layout: post
guid: http://solitude.vkps.co.uk/?p=941
permalink: /Archives/2010/04/05/modern-java-lombok/
categories:
  - Uncategorized
---
In recent months, I&#8217;ve been looking at a lot of new Java libraries to see what I&#8217;d like to use and what I think still has a way to go. I&#8217;ll be posting about them all in due course but I wanted to mention [Lombok](http://projectlombok.org/) first.

First, a class:

<pre class="brush: java; title: ; notranslate" title="">public class Person {
    private String firstName;
    private String lastName;
    private int age;

    public String getFirstName() {
      return firstName;
    }
    public void setFirstName(String firstName) {
      this.firstName = firstName;
    }
    public String getLastName() {
      return lastName;
    }
    public void setLastName(String lastName) {
      this.lastName = lastName;
    }
    public int getAge() {
      return age;
    }
    public void setAge(int age) {
      this.age = age;
    }
}
</pre>

The problem here is that everything after `public int age` is predictable and verbose; you know that this is a Java bean class and that the fields are likely going to have getters and setters just like those provided. If we know exactly what to expect, shouldn&#8217;t the compiler take care of that for us rather than having us specify more code? Less code is often cleaner code.

For several years now, people have been asking for the idea of [properties in Java](http://weblogs.java.net/blog/rbair/archive/2007/01/properties_in_j.html). That is, being able to define fields and automatically having standard getters and setters defined, without having to clutter the class file with boilerplate. The most common (and reasonable) response for avoiding this is that it would be difficult to implement without affecting backwards compatibility.

While those proposals are pretty much dead at the moment, Lombok saves us from having to specify our standard getters and setters by marking our classes as beans and then jumping into the compilation process to make sure getters and setters are generated. The above code becomes:

<pre class="brush: java; title: ; notranslate" title="">@Data
public class Person {
    private String firstName;
    private String lastName;
    private int age;
}
</pre>

That&#8217;s right: the 18 or so lines of getter/setter boilerplate are replaced by the tiny little [@Data](http://projectlombok.org/features/Data.html) annotation, and the code is much cleaner. As a bonus, @Data also generates a `toString()`, an `equals()` and a `hashCode()`. You can use the other Lombok annotations to tweak the behaviour, but this is what most people are going to want.

Also of note is the [@Cleanup annotation](http://projectlombok.org/features/Cleanup.html), which provides automatic resource management (ARM) for using input/output streams. While this will be less essential if ARM arrives in Java 7, it&#8217;s a handy little helper for the time being.

While Lombok can&#8217;t make bad code good, it can make verbose code a lot more succinct.