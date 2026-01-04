---
id: 692
title: Data Mappers with Java
date: 2009-01-13T20:20:48+00:00
author: Gary Fleming
layout: post
guid: http://solitude.vkps.co.uk/?p=692
permalink: /Archives/2009/01/13/data-mappers/
categories:
  - Uncategorized
---
In the Java world, there have been many ways to persist and retrieve domain objects, and most involve some form of ORM mapping. Modern methods include [Hibernate](http://www.hibernate.org/), [iBatis](http://ibatis.apache.org/), [Spring JDBC Templates](http://static.springframework.org/spring/docs/2.0.x/reference/jdbc.html) and other [JPA providers](http://java.sun.com/javaee/overview/faq/persistence.jsp); these are all fine methods and all should be used appropriately. Most of the time you should use one of the above approaches and not what I&#8217;m going to show you below.

One thing I&#8217;d like to say about persistence in Java is that you should almost never be using raw JDBC. There&#8217;s too much boiler-plate and repetition. You need to create a `DataSource`, and then get a `Connection`, then use that `Connection` to get a `PreparedStatement`. That can start to look pretty messy.

Worst of all is that you get a `ResultSet` back which, if used without any form of conversion or mapping to your own domain, exposes the rest of your application to the persistence layer. This is bad for several reasons, not least of all it makes your code more tightly coupled and brittle in the face of change. Let&#8217;s be clear here: passing around a `ResultSet`, `CachedRowSet` or any other variant is **BAD**.

It&#8217;s easy to avoid this problem by convert between a ResultSet row and a domain-specific object. Spring popularised an idea called the RowMapper (which I&#8217;ll outline below). The idea is that you have an interface that, once implemented, will convert between a resultSet and your domain object.

Why might you need this? If you&#8217;re dealing with legacy applications, it&#8217;s frequently too costly to go back and retrofit one of the more modern approaches to ORM; the database layer doesn&#8217;t fit well with Hibernate, or the rest of the codebase won&#8217;t sit nicely with JPA, or you can&#8217;t take an (additional) external library dependency for any number of reasons. Sometimes it&#8217;s easier to quickly roll your own. Here&#8217;s an example I&#8217;ll call a `DataMapper` (NOTE: I&#8217;ve omitted Exception handling for the sake of clarity, you will need to add this back in!):

    public interface DataMapper<T> {
    
    	public T mapRow(ResultSet resultSet);
    
    }

That&#8217;s nice and simple. When you implement this interface, your implementation doesn&#8217;t bother with any sort of row iteration, all it does is take the current row of the `resultSet`, call the standard `getString(...)` etc methods and builds up a single one of your beans, here represented by the generic placeholder `T`. Elsewhere you have this partner method (I like to keep this as a statically imported utility):

    public static <T> Collection<T> map(ResultSet resultSet, DataMapper<T> mapper) {
        Collection<T> mappedObjects = new LinkedList<T>();
        while(resultSet.next() {
            mappedObjects.add(mapper.mapRow(resultSet));
        }
        return mappedObjects;
    }

This method takes care of the iteration. You pass it your resultSet, and a DataMapper implementation and it&#8217;ll give you back a collection of your domain objects. Still quite simple and neat.

How about an example? Let&#8217;s say you have a ResultSet that could be mapped to a simple Person bean:

    public class Person {
    
        private String firstName;
        private String lastName;
        private int age;
    
        //getters and setters for the above fields are omitted
        //Imagine they were below. Go on, it'll make life easier.
    
    }

To do this using the DataMapper code I&#8217;ve outlined above, you&#8217;d have something like this:

    public class PersonMapper implements DataMapper<Person> {
    
        @Override
        public Person mapRow(ResultSet resultSet) {
            Person bean = new Person();
            bean.setFirstName(resultSet.getString("first_name"));
            bean.setLastName(resultSet.getString("last_name"));
            bean.setAge(resultSet.getInt("age"));
            return bean;
        }
    
    }

Pass that to the map method along with a valid ResultSet and you&#8217;ll get out a Collection of Person beans to work with. We&#8217;ve gone from ResultSet to domain-specific in very little code.

Now these DataMappers don&#8217;t have to be simple. They could use the ResultSet and only the ResultSet, or they could use that as a basis to do more queries to build the object. They could lookup other services for information. They can do whatever you want for a relatively high power-to-lines of code ratio.

I&#8217;ve found myself using the DataMapper abstraction for the purposes of unit testing. You write a DataMapper that outright ignores the (perhaps empty) ResultSet you pass it, and it instead uses the some randomised test data you&#8217;ve got ready. You can now easily create test beans without relying on the DB layer.

It&#8217;s not perfect, and there are often better ways of doing persistence, but I&#8217;ve found this pattern has been very useful on a number of occasions.