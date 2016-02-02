---
id: 952
title: 'Modern Java: JPA'
date: 2010-04-22T20:54:10+00:00
author: Gary Fleming
layout: post
guid: http://solitude.vkps.co.uk/?p=952
permalink: /Archives/2010/04/22/modern-java-jpa/
categories:
  - Uncategorized
---
In the previous post, I [showed how JSR-303 is making validation neater.](http://solitude.vkps.co.uk/Archives/2010/04/11/modern-java-validation/) I concluded that article with the Person bean looking like this:

<pre class="brush: java; title: ; notranslate" title="">@Data
public class Person {
    @NotNull @Size(min=1)
    private String firstName;
    @NotNull @Size(min=1)
    private String lastName;
    @Min(18)
    private int age;
}
</pre>

If we know we have a valid bean, at some point we probably want to persist it so we can use it again. I won&#8217;t waste time on spelling out how much boilerplate code is written for raw JDBC calls as most developers have moved a level of abstraction up from that anyway, with great tools like [Spring&#8217;s JdbcTemplate](http://static.springsource.org/spring/docs/3.0.x/javadoc-api/org/springframework/jdbc/core/JdbcTemplate.html).

I also won&#8217;t go deeply into the history of ORM in Java, as a lot has already been said. The Java Persistence API (JPA) standardised fairly sensible ideas about how ORM should work, starting from real implementations (primarily [Hibernate](http://www.hibernate.org/)) and pulling together the main concepts. To prepare a bean for JPA persistence, we merely need to add an @Entity annotation and specify an @Id column (which I&#8217;m going to have to add to Person):

<pre class="brush: java; title: ; notranslate" title="">@Data @Entity
public class Person {
    @Id
    private Long id;
    @NotNull @Size(min=1)
    private String firstName;
    @NotNull @Size(min=1)
    private String lastName;
    @Min(18)
    private int age;
}
</pre>

And that&#8217;s it. You can then use a properly configured EntityManager to persist() your class (the configuration details are largely implementation specific, but relatively lightweight).

There are a lot of options available to configure exactly how an entity should be persisted when passed into an EntityManager. Again, I won&#8217;t cover them all, but it&#8217;s generally considered best practice to state your table and column names explicitly (rather than relying on convention, as I have above) and you&#8217;ll often want to make use of the built-in optimistic concurrency support to stop multiple changes happening at once.

<pre class="brush: java; title: ; notranslate" title="">@Data @Entity @Table(name="people")
public class Person {
    @Id @Column(name="id");
    private Long id;

    @Version @Column(name="version")
    private int version;

    @NotNull @Size(min=1)
    @Column(name="first_name")
    private String firstName;

    @NotNull @Size(min=1)
    @Column(name="last_name")
    private String lastName;

    @Min(18)
    @Column(name="age")
    private int age;
}
</pre>

As a bonus, if you use a JPA2 provider AND have a JSR-303 validation implementation in your classpath, the default behaviour will be for your bean to get validated before it gets persisted, so you wouldn&#8217;t have to explicitly call the validator any more.

Again, there&#8217;s a lot more to be said about JPA, and the use cases that it supports (I haven&#8217;t touched on object-graphs, embedded collections, or the Java persistence query language), but you should have a flavour for it.