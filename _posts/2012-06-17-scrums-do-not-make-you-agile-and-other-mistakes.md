---
id: 15602
title: Scrums Do Not Make You Agile, And Other Mistakes
date: 2012-06-17T21:21:14+00:00
author: Gary Fleming
layout: post
guid: http://solitude.vkps.co.uk/?p=15602
permalink: /Archives/2012/06/17/scrums-do-not-make-you-agile-and-other-mistakes/
categories:
  - Coding
---
In &#8220;[Avoiding False Metrics](http://sethgodin.typepad.com/seths_blog/2012/05/avoiding-false-metrics.html)&#8220;, Seth Godin has a few things to say about the ways in which otherwise sensible people fool themselves into believing they are benefiting, when really they&#8217;re playing a crummy numbers game:

> At the local gym, it&#8217;s not unusual to see hardcore members contorting themselves to fool the stairmaster machine into giving them good numbers. If you use your arms, you can lift yourself off the machine and trick it into thinking you&#8217;re working yourself really hard.
> 
> Of course, you end up with cramped shoulders and a lousy workout, but who cares, the machine said you burned 600 calories&#8230;

We can all see the problem here: people want a result, and will try to take the quickest way of getting there, even if doing so negates the entire exercise.

I can&#8217;t speak about other industries, but it&#8217;s my perception that software engineering is particularly prone to this way of thinking. Lazy software engineers constantly take tools and processes that are supposed to help us build better systems, apply them in the most perfunctory way and think that&#8217;s the improvement made. When we do this, we&#8217;re no better than the gym goers fooling the machines and themselves. A few examples&#8230;

  * **Using a Continuous Integration build server does not mean you are doing continuous integration**. Too many people think that merely having the CI server is enough. It is not. If you&#8217;re making use of a CI server like [Jenkins](http://jenkins-ci.org/), that&#8217;s great: it&#8217;s good to know that your code base is broken as close to the point that it happens as possible. But what do you then do about it? A properly run, continuously-integrated project makes getting the codebase back to a clean/green build the highest priority because if you are merging into a broken codebase, you are not integrating: you&#8217;re merely piling up damage. If the next person to commit causes a fault and doesn&#8217;t know about it immediately because the build had been left broken, they&#8217;re not going to fix it when it&#8217;s most critical to do so.
  
    Beyond just having a build server, there is a lot more to successful continuous integration. For example, what&#8217;s your branching-and-merging strategy? Do you feature-branch at the start of a sprint? That&#8217;s almost certainly not CI. Do you create release branches for going into production and merge fixes back to trunk? Also not pure CI, but possibly an acceptable flavour if you&#8217;re managing it well.
  
    My point is that CI is not just having a build server: it&#8217;s having everyone on your team focussed on the goal of a single, consistent, tested, and reliable codebase.
  * **Coverage does not mean that you have useful tests**. Code coverage can be an insidious metric in the wrong hands. Too many people who do not understand it feel that getting coverage to an arbitrary point is, in and of itself, the goal. It is not. The goal is to have every part of your project covered by meaningful and robust tests in order that you can be sure any regressions are found as early as possible.
  
    By increasing useful coverage, more issues can be found earlier, whereas if we mindlessly write tests to bump up the number, well, that can have the opposite effect. Code designed to merely cover, and not actually test, is often brittle in the face of change. By being about moving a number rather than implementing a check, it&#8217;s not tied to the needs of the project in the same way as a real test, and creates greater difficulty when refactoring occurs.Code designed to cover without testing also gives a false sense of security. You might think that your code is being tested and that you&#8217;ll be warned about regressions, but if your tests are there just to bump coverage stats it&#8217;s more likely you&#8217;ll get nothing from them.
  
    Again, the point is that coverage is merely an indicator: it&#8217;s the red light on your dashboard telling you there is a problem. The solution is to find the root cause and fix it, not to cover the dashboard in green lights so you can&#8217;t see the red any more.
  * Similarly, **static analysis tools do not necessarily mean you will have high quality code**. Some think that getting your Sonar bugs down to zero is, in itself, worthwhile. It is not. It&#8217;s only by fixing the underlying issues in your code that you get any real gains, and these underlying issues are not always what Sonar is telling you about.
  
    Far too often I&#8217;ve seen people get a series of &#8220;This Method Is Too Long&#8221; Checkstyle errors, and immediately just break lumps of code out into smaller functions. This is not necessarily the right approach. Rather than taking it at face value (&#8220;Method is too long? I must need a bunch of smaller methods!&#8221;), consider that your abstraction might be incorrect. You might indeed need smaller, better structured methods, but you might equally need to take a long hard look at your class and decide if it&#8217;s doing too much. Maybe you need a much deeper refactoring.
  
    Remember: static analysis tools tell you about _symptoms_. It&#8217;s your job to hunt for the real cause, rather than merely treating the symptoms.
  * On the human side, **scrums do not make you agile**. Scrum is an extremely important and easily implemented concept in the agilist&#8217;s toolbelt, and some think by merely getting everyone together for a short meeting every day to get status updates that they will see benefits. They will not.
  
    Many teams lose the benefits of having a scrum by simply not understanding the necessary structure and strictures, or really understanding the lessons they learn. By reducing it to a box-ticking exercise (&#8220;Everyone said what they&#8217;re working on, and what they are going to work on so it must be okay&#8221;), they negate the whole point.
  
    Following a semblance of the process is important: every update should be headline only, protracted conversations should be broken out, and everyone in the scrum should largely care about what everyone else is saying. If you fail on any of these points, then you&#8217;re simply wasting everyone&#8217;s time and missing the point.
  
    As with most good practice, the point of a scrum is to minimise the delay between a problem being identified and it being solved. This might be by someone hearing an update and saying &#8220;what about this?&#8221;, or maybe being able to help with an identified blocker. It&#8217;s not, however, going to happen when sprawling updates, unnecessary information, and long conversations cause half the audience to tune out.

Perhaps it&#8217;s because we&#8217;re used to using machines to take shortcuts in otherwise challenging and tediously manual work that we feel we can apply these shortcuts without too much critical thinking. This is a mistake that will only compound itself.