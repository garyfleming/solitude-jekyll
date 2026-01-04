---
id: 944
title: 'Modern Java: Validation'
date: 2010-04-11T19:22:09+00:00
author: Gary Fleming
layout: post
guid: http://solitude.vkps.co.uk/?p=944
permalink: /Archives/2010/04/11/modern-java-validation/
categories:
  - Uncategorized
---
In the previous post on Modern Java, I showed how [Lombok is making Java beans more concise](/Archives/2010/04/05/modern-java-lombok/). In that post, I showed how we would end up with the following class:

<pre class="brush: java; title: ; notranslate" title="">@Data
public class Person {
    private String firstName;
    private String lastName;
    private int age;
}
</pre>

Given an instance of that class by binding data from a web form, a database or some other data source, a fairly common requirement is to validate it against a series of rules and constraints.

For example, if we assume &#8220;age&#8221; is the number of years the person being described has been alive, we know that it must be zero or greater. Depending on our application we may also know that it&#8217;s above a minimum age (18, say) and is extremely likely to be below a maximum age (there are very few people over 100, and none over 120).

A few years ago, you would have to write a custom piece of code to validate simple rules in all of your domain classes. These would typically be specific to the class in question, running through a series of explicit checks, and produce a list of errors found. While this worked, it was often verbose and tightly-coupled to each domain class. It might look something like this:

<pre class="brush: java; title: ; notranslate" title="">public Collection&lt;Error&gt; validate(Person person) {
  Collection&lt;Error&gt; errors = new LinkedList&lt;Error&gt;();
  if(person.getAge() == null) {
    errors.add(new Error("Age cannot be null"));
  }
  if(person.getAge() &lt; 0) {
    errors.add(new Error("Age must be greater than zero"));
  }
  if(person.getAge() &gt; 120) {
    errors.add(new Error("Unlikely to be a real age"));
  }
  return errors;
}
</pre>

Note that we&#8217;re only validating a few rules on one field, and it&#8217;s already quite verbose. If we validated every field on an object and the interdependencies between them, then we would have a lot of code.

Both the [Spring Framework](http://www.springsource.org/) and [Hibernate](http://hibernate.org/) had come up with their own ways of making writing and integrating validation logic a little easier, but now validation has been standardised in [JSR-303](http://jcp.org/en/jsr/detail?id=303). The reference implementation is Hibernate Validator 4, and it&#8217;s a great starting point, but most uses of JSR-303 will be relatively agnostic of the implementation. Since this is a finalised specification, you can also make use of it today.

For our Person class above, let&#8217;s add the following constraints:

  * Age must be 18 or more
  * First and last name must be set i.e. they can&#8217;t be left null
  * First and last name must have at least one character in them

To implement these rules, we need only add a few new annotations, using standard constraints:

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

You then create a Validator instance (how you do this will depend on your chosen implementation), and pass the class in for validation:

<pre class="brush: java; title: ; notranslate" title="">Set&lt;ConstraintViolation&lt;Person&gt;&gt; errors = validator.validate(person);
</pre>

All the validation is then handled for you, reducing the amount of code and making your bean classes very clearly state the constraints under which they operate. You know a first name is not just any old nullable string by just looking at the class, and you know ages have limitations in your particular domain of interest. The code is more expressive and concise, and that&#8217;s a very good thing.

There&#8217;s a lot more to the JSR-303 specification, and it has all the features you might want. While I fully intend to go into the other features at another time, I&#8217;d strongly recommend browsing the spec to see some of the power and flexibility available to you.