# Lectures

Below are descriptions of the lectures delivered during Phase 1.

[Week 1](#week-1-ruby)

[Week 2](#week-2-object-oriented-programming)

[Week 3](#week-3-databases)

## Week 1: Ruby

#### Monday
* **<a name="github-based-challenge-system"></a>Intro to GitHub-based Challenge System (Torey and Matt):**

  During their first day at DBC, students are given an introduction to DBC and an overview of how to operate at DBC.  The majority of this information is delivered by Dave and Alex.  It is the responsibility of the instructors to walk students through the use of the cohort's GitHub organization.  At a minimum, students should be walked through the phase guide and shown how to submit a challenge.


#### Tuesday
* **<a name="rspec-basics"></a>Rspec Basics (Matt):**

  Intro to basic concepts behind testing: writing examples and example groups, identifying edge cases, what to test, running the tests.


#### Wedesday

* **<a name="iteration-and-recursion"></a>Iteration and Recursion (Matt):**

  Introduce students to the idea of algorithms, steps for solving a problem.  Students should be given an introduction to both iteration and recursion.  With iteration, students should be informed of (1) looping, and (2) iterating over collections.  With recursion, students should be informed of (1) breaking a problem down into smaller, solvable problems; (2) a method calling itself; (3) the base case.  Working in their weekly groups, students should write algorithms for solving a simple problem (e.g., detecting palindromes) both iteratively and recursively.


#### Thursday

* **<a name="object-heap-and-nested-data-structures"></a>Object Heap & Nested Data Structures (Matt):**

  Introduce students to the object heap and the concept of pointers.  The main take away is that the value of a variable is not an object itself, rather a pointer to an object. Students should realize that this can cause issues when assigning the value of one variable to another (specifically, that this action does not create a copy of the data).

  Demonstrate nested data structures and highlight that duplicating or cloning an array only produces a shallow copy (i.e., a new array object with the same objects).


#### Friday

* **<a name="sudoku-workshop"></a>Sudoku Workshop & Group Dynamics (Torey and Matt):**

  Before students begin, make sure that all students are familiar with the rules of Sudoku.  This will be their first group challenge.  Discuss working on code in teams.


## Week 2: Object Oriented Programming

#### Monday

* **<a name="introduction-to-oop"></a>Sudoku Recap & Introduction to OOP (Torey):**

  Introduce students to object-oriented programming.  Stress to students that they need to read Practical Object Oriented Design in Ruby.  Cover modeling the real world--both state and behavior--and encapsulation with an introduction to classes and modules.


#### Tuesday

* **<a name="inheritance-mixins-composition"></a>Inheritance, Mixins and Composition (Matt):**

 Touch briefly on inheritance, the inheritance tree, and how method lookup works.  Discuss when inheritance can break down as a code-sharing tactic, demonstrate mixins as a solution (e.g., a class composed of many mixins). Discuss composition. Present an example with inheritance modeling a "has_a" relationship. For example, a class "Car" that inherits from "ThingWithWheels"


#### Wednesday

* *No lecture scheduled*


#### Thursday

* *No lecture, mock assessments*


#### Friday

* **<a name="classes-single-responsibility-and-managing-dependencies"></a>Classes: Single Responsibility and Dependencies (Torey):**

    Discuss single responsibility in terms of classes.  Reiterate the benefits of single responsibility.  Each class or module should serve one purpose and everything that it does (e.g., methods) should serve that purpose.  Present students with a design decision to make and alternative solutions.  In groups, students should discuss the impact that the solution would have on the changeability and reuse of the classes involved.  Following the information presented in Practical Object Oriented Design in Ruby, discuss with students the drawbacks to writing classes that are too tightly coupled.  In addition, present techniques for limiting dependencies.

    Live code a challenge from Week 2 (e.g., World's Dumbest Browser), applying these principles and the model-view-controller pattern.


## Week 3: Databases

#### Monday

* **<a name="schema-design-workshop"></a>Schema Design Workshop ():**

  Lead students through a workshop where, working in teams, they will recreate the database schema for a popular website (e.g., flickr).


#### Tuesday

* *No lecture scheduled*


#### Wedesday

* **<a name="introduction-to-activerecord"></a>Introduction to ActiveRecord ():**

  Introduce students to ActiveRecord.  Inform students that ActiveRecord is a gem that they will be using throughout the rest of DBC.  It is an ORM that provides classes from which the classes they write will inherit.  Introduce students to migrations for creating tables, class methods for retrieving and creating records, instance methods that match table field names, validations, and callbacks.  Highlight that ActiveRecord expects that users follow conventions in naming and particularly how class names match table names.


#### Thursday

* *No lecture, assessments*

#### Friday

* **<a name="activerecord-associations"></a>ActiveRecord Associations ():**

  Guide students through setting up `has_many`, `belongs_to`, and `has_many` through associations in their models.  Discuss the expectations that ActiveRecord has when we declare an association (e.g., class name, foreign key name, source associations, etc.).  Then, rename associations, supplying ActiveRecord with the data that it needs.  Have students infer the SQL queries that will be generated by methods and trace the finding of records in a mock database.

