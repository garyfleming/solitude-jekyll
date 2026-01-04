---
id: 15622
title: How To Do Support Well
date: 2012-06-21T23:44:03+00:00
author: Gary Fleming
layout: post
guid: http://solitude.vkps.co.uk/?p=15622
permalink: /Archives/2012/06/21/how-to-do-support-well/
categories:
  - Coding
---
There are many aspects of professional software development that I had to learn the hard way i.e. by smashing off every branch of the mistake tree and landing on my arse. That&#8217;s a perfectly fine way of figuring things out.

Surprisingly, though, that&#8217;s not how I learned to do development-support well, which is sometimes called level 3 support. It was something I picked up extremely early in my career, and I&#8217;ve yet to learn a better method (not through lack of trying).

I&#8217;m going to share the method I was taught in just a second, but a quick clarification of terms. What is development-support? A typical BigCo has 3 kinds of support staff:

  * User-support (sometimes called level 1) deals with any user level queries, like forgotten passwords, usernames, simple account queries etc. They run the day-to-day of the system, but are not necessarily very technical. When they get asked a question that they can&#8217;t answer, they escalate it to&#8230;
  * Application-support (level 2). These people tend to be technical, but not necessarily developers. They&#8217;re in charge of making sure all the servers are running, backups are taken, settings are configured correctly, and that the system is running smoothly. They may perform these tasks directly, or they may co-ordinate with more specialised staff, like system administrators or DBAs. If there is something really wrong with the application itself, they&#8217;ll escalate to&#8230;
  * Development-support (level 3). These are almost universally people who actively write code for the system in question and, thus, are expected to be able to debug through more complicated and unusual issues arising from the application.

So, with that explanation in hand, back to how I was trained to do development-support and why I think it&#8217;s the best way of doing it&#8230;

In my first job after university, I was involved in web application with a complicated permission model. Every user had a role that gave them a set of default privileges they were allowed to perform. The domain I was working in is not important, but imagine that someone with a Doctor role might be able to perform treatments, write prescriptions, give medical advice to patients etc whilst someone with a Nurse role can perform minor treatments but not write prescriptions. That&#8217;s relatively straightforward.

The complication we had was that for any given item in the system (in our example, a Patient) individual people could be stripped of a privilege normally associated with their role. For example, Doctor X might not be able to give a prescription to Patient Y (perhaps they&#8217;re related?).

These minor tweaks to the default permission model were rare enough that they were not the expected norm, but common enough that the role/privilege model had to be maintained; there was no opportunity to simplify.

The single biggest cause of support calls making it to the level 3 development-support team were, inevitably, around the privilege model. Doctors didn&#8217;t understand why they could write prescriptions for 99% of patients, but one or two would cause them issues, and that those one or two would be different for every doctor.

The model I was taught for addressing these issues was this:

  1. **Give the person asking a support question an answer as quickly as reasonably possible**. If it&#8217;s gotten as far as you, for whatever reason, then don&#8217;t pass the buck if you can: answer the question. A general, all-encompassing solution might not be necessary: just figure out how to get the person asking the question a satisfactory answer quickly.
  2. **Train the level above you to solve this class of problems**. In a structured support model, like the one detailed above, development-support should only be getting asked about things that the other levels cannot complete through lack of understanding, training, or some impediment. It&#8217;s the duty of development-support to provide these things and, in doing so, removing the burden from themselves so they can focus on writing more code.
  3. **Make solving the problem trivial**. If a question is being asked enough, it&#8217;s time to take action. Write sufficient tooling to make solving similar problems simple; or change the information that is displayed so that the answer is obvious and the question itself is removed.

Look at this model through the privilege problem I described. Step 1, when asked why Doctor X cannot give a prescription to Patient Y, might involve manually joining some database privilege tables to see that they&#8217;ve had that privilege removed for some reason (&#8220;Patient Y is the wife of Doctor X&#8221;). That should satisfy the immediate need. Step 2 would be completed by explaining the database structure and queries to application-support so that they&#8217;d be able to do what you did for any future queries of a similar nature. Finally, step 3 could be solved in several ways. You could provide a more robust tool so that either support can merely type in &#8220;Doctor X&#8221; and &#8220;Patient Y&#8221; and be immediately told about the privilege constraints, or you could expose the information directly to the user. When Doctor X tries to write a prescription for Patient Y, they&#8217;d be immediately told they cannot do so for the known reason.

This is a pretty straightforward model to follow, yet I&#8217;m consistently surprised to see many teams stopping at step 1 where they&#8217;re left to absorb all complex queries indefinitely. I&#8217;m not saying it&#8217;s perfect, all that it would fit every scenario, but I&#8217;ve found it works very well for me.