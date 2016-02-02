---
id: 12421
title: Jdbc and Enums
date: 2011-02-15T23:54:19+00:00
author: Gary Fleming
layout: post
guid: http://solitude.vkps.co.uk/?p=12421
permalink: /Archives/2011/02/15/jdbc-and-enums/
categories:
  - Uncategorized
---
After months of using JPA/Hibernate almost exclusively, I got caught out on a relatively simple bug when using JDBC more directly (well, via Spring&#8217;s JdbcTemplate):

<pre class="brush: java; title: ; notranslate" title="">public List&lt;SomeObject&gt; fetchSomeObjects(RecordType recordType) {
  Map&lt;String,Object&gt; params = ...//Map creation;
  params.put("recordType", recordType);
  return namedParameterJdbcTemplate.query("select * from someObject where recordType =  :recordType",
    params,
    someRowMapper);
}</pre>

That was from memory, so it may be a little off, but it should give you the basics of what the code was doing. It looks okay to my eyes, but, of course, it wasn&#8217;t. When run an exception was being thrown from the bowels of the JDBC code saying that RecordType couldn&#8217;t be converted to a JAVA_OBJECT.

Odd, I thought. It had worked perfectly well with an in-memory database (HSQL) but now wasn&#8217;t working when deployed on a hosted database (SQL server).

I couldn&#8217;t spot it straight away, so a quick debugging session revealed the problem: JDBC doesn&#8217;t play nicely with enums. RecordType, an enum, was being passed to JDBC verbatim without any attempt for it to match up with the recordType column (a varchar column); and that just doesn&#8217;t work. You need to explicitly convert from an enum to a String.

Thankfully, it was a one-line fix:

<pre class="brush: java; title: ; notranslate" title="">params.put("recordType", recordType.toString());
</pre>

It doesn&#8217;t read quite as neatly but it works. The fact that the original version reads quite well (the value for &#8220;recordType&#8221; is called recordType) actually makes the bug harder to spot. Now, back to JPA.