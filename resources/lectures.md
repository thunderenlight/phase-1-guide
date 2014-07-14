# Lectures

Below are descriptions of the lectures delivered during Phase 1.

[Week 1](#week-1-ruby)

[Week 2](#week-2-object-oriented-programming)

[Week 3](#week-3-databases)

## Week 1: Ruby

#### Monday
* **<a name="github-based-challenge-system"></a>Intro to GitHub-based Challenge System ():**

  During their first day at DBC, students are given an introduction to DBC and an overview of how to operate at DBC.  The majority of this information is delivered by Dave and Alex.  It is the responsibility of the instructors to walk students through the use of the cohort's GitHub organization.  At a minimum, students should be walked through the phase guide and shown how to submit a challenge.

#### Tuesday
* **<a name="rspec-basics"></a>Rspec Basics ():**

  Intro to basic concepts behind testing. Cover writing a simple test, edge cases, how to use RSpec.

* **<a name="regular-expressions"></a>Regular Expressions ():**

  Discuss regular expressions.  Students are encouraged to think of regular expressions as patterns which we try to find in strings.  Students should encounter both simple character patterns and also some of the more common metacharacters.  Direct students to [rubular.com](http://rubular.com) to help developing their regular expressions.  In the past, instructors have used series of colored shapes rather than alphanumeric strings when looking at and developing examples.

#### Wedesday

* **<a name="iteration-and-recursion"></a>Iteration and Recursion ():**

  Introduce students to the idea of algorithms, steps for solving a problem.  Students should be given an introduction to both iteration and recursion.  With iteration, students should be informed of (1) looping, and (2) iterating over collections.  With recursion, students should be informed of (1) breaking a problem down into smaller, solvable problems; (2) a method calling itself; (3) the base case.  Working in their weekly groups, students should write algorithms for solving a simple problem (e.g., detecting palindromes) both iteratively and recursively.

* **<a name="ruby-scope"></a>Ruby Scope ():**

  Discuss variables, methods and their visibility. How and when you can access variables and methods in your code.

#### Thursday

* **<a name="debugging"></a>Debugging and Testing ():**

  Introduce students to debugging techniques. Discuss strategies (read error, get visibility, resolve conflict, repeat), introduce debugging tools for gaining visibility (puts, debuggers).

  Debugging tools: [debugger](https://rubygems.org/gems/debugger), [pry](http://pryrepl.org/).

  In the past, teachers have guided students through a [series of debugging steps](https://gist.github.com/openspectrum/7c100a04e3c2289ec38a#a-guide-to-the-steps-of-debugging).

* **<a name="object-heap-and-nested-data-structures"></a>Object Heap & Nested Data Structures ():**

  Introduce students to the object heap and the concept of pointers.  The main take away is that the value of a variable is not an object itself, rather a pointer to an object. Students should realize that this can cause issues when assigning the value of one variable to another (specifically, that this action does not create a copy of the data).

  Demonstrate nested data structures and highlight that duplicating or cloning an array only produces a shallow copy (i.e., a new array object with the same objects).

#### Friday

* **<a name="sudoku-workshop"></a>Sudoku Workshop ():**

  To prepare the sudoku group challenge, students are led through a  workshop.  Present students with [printouts of a sudoku board](./sudoku_board.pdf).  Explain to students the rules of sudoku.  Then, in their groups, students spend 15 to 20 minutes writing pseudocode for solving a sudoku puzzle.  Each group presents their pseudocode to the cohort.

* **<a name="single-responsibility-methods"></a>Single Responsibility Methods ():**

  Decompose a complex method (e.g., squared primes method from Week 1: Monday).  Extract the various bits of logic into small, reusable methods.


## Week 2: Object Oriented Programming

#### Monday

* **<a name="sudoku-review"></a>Sudoku Review ():**

  Each group from Week 1 will present their sudoku solution.  Encourage students to reveal their code rather than hide it.  They should also talk through their approach and broadly trace the execution of their program.  If appropriate, instructors may offer quick, on-the-spot code reviews.  Once the students have presented their solutions, an instructor may either live code the beginnings of a sudoku solution or present a solution they've written, highlighting decision making and applying best practices.

* **<a name="introduction-to-oop"></a>Introduction to OOP ():**

  Introduce students to object-oriented programming.  Stress to students that they need to read [Practical Object Oriented Design in Ruby](https://www.dropbox.com/s/82gx9sf00vmonad/Practical%20Object%20Oriented%20Design%20in%20Ruby.pdf).  Reiterate the benefits of object-oriented programming.  Cover modeling the real world--both state and behavior--and encapsulation with an introduction to classes and modules.


#### Tuesday

* **<a name="inheritance-mixins-composition"></a>Inheritance, Mixins and Composition():**

 Touch briefly on inheritance, the inheritance tree, and how method lookup works.  Discuss when inheritance can break down as a code-sharing tactic, demonstrate mixins as a solution (e.g., a class composed of many mixins). Discuss composition. Present an example with inheritance modeling a "has_a" relationship. For example, a class "Car" that inherits from "ThingWithWheels"

#### Wednesday

* **<a name="reading-oss"></a>Reading Open Source Software: Nokogiri ():**

  Use an intro to the Nokogiri gem to demonstrate how we read documentation and explore an API (even if it isn't well documented). Remind students of basic tree structures (students should be familiar with the DOM after P0). Review the structure of the DOM and parent-child relationships.  Review basic CSS selectors.  Demonstrate working with Nokogiri.

#### Thursday

* *No lecture, mock assessments*

#### Friday

* **<a name="model-view-controller"></a>Model View Controller ():**

  Introduce students to the model-view-controller design pattern.  Reference separation of concerns to highlight the different responsibilities of each MCV component:  models for data and related behaviors, the view for the user interface, and the controller for directing traffic.  Showcase an MVC-designed example (e.g., Bernie's Bistro).

* **<a name="classes-single-responsibility-and-managing-dependencies"></a>Classes: Single Responsibility and Dependencies():**

    Discuss single responsibility in terms of classes.  Reiterate the benefits of single responsibility.  Each class or module should serve one purpose and everything that it does (e.g., methods) should serve that purpose.  Present students with a design decision to make and alternative solutions.  In groups, students should discuss the impact that the solution would have on the changeability and reuse of the classes involved.  Following the information presented in Practical Object Oriented Design in Ruby, discuss with students the drawbacks to writing classes that are too tightly coupled.  In addition, present techniques for limiting dependencies.


## Week 3: Databases

#### Monday

* **<a name="schema-design"></a>Schema Design ():**

  Connect the notion of modeling state and behavior in Ruby to modeling in a database schema.  Draw parallels between tables and classes, records and object instances, and fields and attributes.  Discuss primary and foreign keys.  As an exercise, design a schema for a website based on the information visible on the site (e.g., flickr).


#### Tuesday

* **<a name="object-relational-mapping"></a>Object-relational Mapping ():**

  As students are now modeling systems both in Ruby and databases, introduce object-relational mapping.  Inform students that an ORM translates between Ruby and SQL.  Users send Ruby messages; the ORM translates them to SQL, executes the SQL command, and translates the result back to Ruby.


#### Wedesday

* **<a name="introduction-to-activerecord"></a>Introduction to ActiveRecord ():**

  Introduce students to ActiveRecord.  Inform students that ActiveRecord is a gem that they will be using throughout the rest of DBC.  It is an ORM that provides classes from which the classes they write will inherit.  Introduce students to migrations for creating tables, class methods for retrieving and creating records, instance methods that match table field names, validations, and callbacks.  Highlight that ActiveRecord expects that users follow conventions in naming and particularly how class names match table names.

* **<a name="basic-security"></a>Basic Web Security ():**

  Explain the dangers of plain-text passwords. Introduce basic hashing and demonstrate its vulnerabilities as well. Finally, introduce salts.

  Also introduce students to the dangers of SQL injection attacks and how to safeguard against them.  Guide students through a hacking example:  [Hack Me App](https://github.com/Devbootcamp/hack-me-app), but warn them not to try this on real websites as there could be consequences.


#### Thursday

* *No lecture, assessments*

#### Friday

* **<a name="activerecord-associations"></a>ActiveRecord Associations ():**

  Guide students through setting up `has_many`, `belongs_to`, and `has_many` through associations in their models.  Discuss the expectations that ActiveRecord has when we declare an association (e.g., class name, foreign key name, source associations, etc.).  Then, rename associations, supplying ActiveRecord with the data that it needs.  Have students infer the SQL queries that will be generated by methods and trace the finding of records in a mock database.

