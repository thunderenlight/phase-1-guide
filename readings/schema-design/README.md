# Introduction to Schema Design

We create objects to hold data, but our data is lost when our program has finished executing because we aren't storing this data anywhere. What if we want to use the current state of our objects later? We'll need a way to access this data in the future (we need this data to persist). In the upcoming week, we'll explore saving data in CSV's and databases. 

Databases model data in real world systems. Great, but how do databases and ruby relate to one another? 

![RUBY&DATABASES](http://i.imgur.com/EnpF1k1.png)


Let's take a look at our Orange Tree example. If we want to build a database schema to model our orange trees and oranges, we could easily add their respective attributes to each table like below. Each orange tree has an age and height, while each orange has a diameter. Automatically generated are a few fields such as an id, also known as a primary key (unique identifier) and timestamps (created and updated at). The primary key for each of these tables is a field (or collection of fields) which uniquely identify that row from all other rows. Rails defaults to using a synthetic primary key, which is just an arbitrary, auto-incrementing integer usually denoted by the field name id. 

<pre>
+---------------+        +-------------+
| orange_trees  |        | oranges     |
+---------------+        +-------------+
| id            |        | id          |
| age           |        | diameter    |
| height        |        | created_at  |
| created_at    |        | updated_at  |
| updated_at    |        +-------------+
+---------------+        
</pre>

After creating the basic table structure, we need to decide how to link these tables or in other words, how does these objects relate to each other? To link these tables, we will need to place a foreign key on the table of the objects that are owned. 

What's the relationship between orange trees and oranges? Does an orange tree have many oranges or do oranges have many orange trees? Identifying these relationships can be difficult if the relationship is abstract. It's helpful to think of real life situations and ask yourself if one object belongs to another and if an object can exist without the other. In this case, one orange definitely belongs to a specific orange tree. Orange trees create the oranges, so technically they can't exist without an orange tree. So, we need to place the foreign key on the oranges table. The convention is that the foreign key (orange_tree_id, here) contains the singular version of the object it belongs to. Each orange belongs to a specific orange tree, and multiple oranges can belong to the same orange tree. 

In our database schema design, we display this relationship by placing the foreign key on the oranges table and connecting this foreign key with the primary key on the orange tree table. 

<pre>
+---------------+        +-----------------+
| orange_trees  |        | oranges         |
+---------------+        +-----------------+
| id            |&lt;---\   | id             |
| age           |     \--| diameter        |
| height        |        | orange_tree_id  |
| created_at    |        | created_at      |
| updated_at    |        | updated_at      |
+---------------+        +-----------------+
</pre>

Each orange belongs to a specific orange tree, and multiple oranges can belong to the same orange tree. If this concept is still abstract, the example below may help you visualize what is going on in this example.

![RelationshipTable](http://i.imgur.com/mCBLGKN.png)

This weekend you'll have a collection of challenges that explore the different relationships (one-to-one, one-to-many, many-to-many) you will soon come to love modeling with database schemas. 
