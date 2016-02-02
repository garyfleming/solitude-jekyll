---
id: 1341
title: 'Modern Java: The Point'
date: 2010-07-06T14:30:38+00:00
author: Gary Fleming
layout: post
guid: http://solitude.vkps.co.uk/?p=1341
permalink: /Archives/2010/07/06/modern-java-the-point/
categories:
  - Uncategorized
---
In the Modern Java series, I&#8217;ve looked at how [Lombok](/Archives/2010/04/05/modern-java-lombok/ "Modern Java: Lombok") removes boilerplate from bean classes, [JSR-303 validation](/Archives/2010/04/11/modern-java-validation/ "Modern Java: Validation") makes checking domain correctness neat and how [JPA](/Archives/2010/04/22/modern-java-jpa/ "Modern Java: JPA") provides a convenient standardisation over the ORM space. Each of these technologies does something interesting and in an interesting way.

The point of this series, however, was not to try to provide any deep level of insight into any of those technologies; writing anything even approaching a useful tutorial about JPA alone would take up many more posts than I had ever intended on giving the subject. There is simply too much there, and too much intricacy involved to sum that up.

No, the point of this series was multi-faceted, and I&#8217;d like to take another few moments to try and explain what I was trying to achieve.

Firstly, the primary concern for designing good systems is understanding the domain of interest. If you don&#8217;t understand the domain well, you won&#8217;t be able to produce a nice user experience at the front-end. You won&#8217;t be able to write meaningful abstractions at the back-end. You won&#8217;t be able to write something that you can pick up a year or two down the line and immediately understand. Knowing and understanding the domain is a _prerequisite_ for good design.

What does that have to do with the libraries I discussed? Each of them help you design in terms of the domain and only the domain. Lombok helps you write domain objects without all the cruft in the way. Standardised validation makes sure the correct rules are cleanly annotated and enforced on those domain objects. JPA ensures that when instances of those domain objects are persisted, they are persisted following a series of rules that make sense for the domain. Each of the libraries pushes you down a path of thinking about your domain and hiding other more mundane concerns.

Secondly, I wanted to show that clean code is infinitely preferable to cluttered code. In the examples I gave, I showed a simple bean class being built up with just a handful of annotations, each one describing it&#8217;s own purpose and providing a clean understanding of the domain. As a thought experiment, consider what that code would be like without the annotations. Imagine the number of classes and methods that even a well-designed alternative would have to orchestrate. While I&#8217;m sure it could be quite neat, I can&#8217;t imagine a solution quite as neat as the one offered by the technologies I mentioned.

That leads into my final point: modern Java features, such as annotations, and the libraries that make use of them allow for much richer, cleaner and downright better code than has been possible previously. I won&#8217;t try to argue that Java is perfect as a language as I like many of the alternatives, such as Scala, Groovy, Haskell, Ruby, Python and many others. What I _am_ trying to say, though, is the situation with the Java language is a lot better than it was five years ago, when typical Java code was verbose, unsightly and headed away from the domain. It often obscured the domain, rather than illuminating it.

My hope is that future iterations of the language and future libraries continue to keep Java in a competitive place in the language market, by making even more problems domain-focused and removing the remaining boilerplate. With the [Project Coin](http://openjdk.java.net/projects/coin/) and [Project Lambda](http://openjdk.java.net/projects/lambda/) improvements due in Java 7 later in the year, I really think this will be the case.