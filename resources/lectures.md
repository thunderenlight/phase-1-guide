# Lectures

Below are descriptions of the lectures delivered during Phase 1.

[Week 1](#week-1-ruby)

[Week 2](#week-2-object-oriented-programming)

[Week 3](#week-3-databases)

## Week 1: Ruby

#### Monday
* **<a name="github-based-challenge-system"></a>Intro to GitHub-based Challenge System:**

  During their first day at DBC, students are given an introduction to DBC and an overview of how to operate at DBC.  The majority of this information is delivered by Dave and Alex.  It is the responsibility of the instructors to walk students through the use of the cohort's GitHub organization.  At a minimum, students should be walked through the phase guide and shown how to submit a challenge.

#### Tuesday
* **<a name="writing-readable-code"></a>Writing Readable Code:**

  In a short lecture (15 min.), highlight writing code that is readable for humans.  Key points are [Ruby style conventions](https://github.com/styleguide/ruby), descriptive naming of variables and methods, and writing focused methods.  In the past, instructors have [refactored a roman numerals solution](https://gist.github.com/openspectrum/1fc609849ee747e333a1).

* **<a name="regular-expressions"></a>Regular Expressions:**

  Discuss regular expressions.  Students are encouraged to think of regular expressions as patterns which we try to find in strings.  Students should encounter both simple character patterns and also some of the more common metacharacters.  Direct students to [rubular.com](http://rubular.com) to help developing their regular expressions.  In the past, instructors have used series of colored shapes rather than alphanumeric strings when looking at and developing examples.

* **<a name="enacting-enumerables"></a>Enacting Enumerables Workshop:**

  During the last 45 minutes of the day, students develop and present short skits that illustrate [Enumerable](http://www.ruby-doc.org/core-2.1.1/Enumerable.html) methods.  The purpose is to expose students to new methods while also developing an understanding for how they work.  Students work in their weekly groups.  Each group is given two methods that function similarly.  The group should develop a skit that demonstrates the functionality of each method while also highlighting the differences.  [Directions and method pair assignment for students](https://github.com/grasshoppers-2014/phase-1-guide/blob/master/resources/enacting_enumerables.md).

#### Wedesday

* **<a name="iteration-and-recursion"></a>Iteration and Recursion:**

  Introduce students to the idea of algorithms, steps for solving a problem.  Students should be given an introduction to both iteration and recursion.  With iteration, students should be informed of (1) looping, and (2) iterating over collections.  With recursion, students should be informed of (1) breaking a problem down into smaller, solvable problems; (2) a method calling itself; (3) the base case.  Working in their weekly groups, students should write algorithms for solving a simple problem (e.g., detecting palindromes) both iteratively and recursively.

* **<a name="variables-and-pointers"></a>Variables and Pointers:**

  Introduce students to the notion of pointers and how Ruby stores objects.  The main take away is that the value of a variable is not an object itself, rather a pointer to an object.  Students should realize that this can cause problems when assigning a variable the value of another variable.  Also highlight that duplicating or cloning an array only produces a shallow copy (i.e., a new array object with the same objects).


#### Thursday

* **<a name="debugging"></a>Debugging:**

  Introduce students to debugging techniques.  In the past, teachers have guided students through a [series of debugging steps](https://gist.github.com/openspectrum/7c100a04e3c2289ec38a#a-guide-to-the-steps-of-debugging).  In addition, students are introduced to using puts statements to check the state of variables at a given point in their application and the use of debuggers like [debugger](https://rubygems.org/gems/debugger), [byebug](https://rubygems.org/gems/byebug), and [pry](http://pryrepl.org/).

* **<a name="nested-data-structures"></a>Nested Data Structures:**

  Introduce students to nested arrays and hashes.  Discuss drilling into the structures by chaining method calls that return successively deeper objects.  Discuss the drawbacks to using array structures that rely on remembering the values at each position in the array.

#### Friday

* **<a name="sudoku-workshop"></a>Sudoku Workshop:**

  To prepare the sudoku group challenge, students are led through a  workshop.  Present students with [printouts of a sudoku board](https://github.com/grasshoppers-2014/phase-1-guide/blob/master/resources/sudoku_board.pdf).  Explain to students the rules of sudoku.  Then, in their groups, students spend 15 to 20 minutes writing pseudocode for solving a sudoku puzzle.  Each group presents their pseudocode to the cohort.


## Week 2: Object Oriented Programming

#### Monday

* **<a name="sudoku-review"></a>Sudoku Review:**

  Each group from Week 1 will present their sudoku solution.  Encourage students to reveal their code rather than hide it.  They should also talk through their approach and broadly trace the execution of their program.  If appropriate, instructors may offer quick, on-the-spot code reviews.  Once the students have presented their solutions, an instructor may either live code the beginnings of a sudoku solution or present a solution they've written, highlighting decision making and applying best practices.

* **<a name="introduction-to-oop"></a>Introduction to OOP:**

  Introduce students to object-oriented programming.  Stress to students that they need to read [Practical Object Oriented Design in Ruby](https://www.dropbox.com/s/82gx9sf00vmonad/Practical%20Object%20Oriented%20Design%20in%20Ruby.pdf).  Reiterate the benefits of object-oriented programming.  Cover modeling the real world--both state and behavior--and encapsulation with an introduction to classes and modules.


#### Tuesday

* **<a name="inheritance-vs-composition"></a>Inheritance vs. Composition:**

  In their challenges, students are being exposed to extending behavior through inheritance and including modules.  Describe why we use them (e.g., DRY, reusable code).  Show students examples of extending behavior through each method.  With inheritance, discuss the ancestor tree and how Ruby looks for methods called on an object and the use of 'super' within methods.  With composition (i.e, using modules) discuss the module being added as an ancestor and how Ruby again searches the ancestor tree.  Compare inheritance and composition:  one inherited parent vs. many included modules, composition leads to less tightly coupled code

#### Wednesday

* **<a name="tree-structures-dom-and-nokogiri"></a>Tree Structures:  DOM and Nokogiri:**

  Prepare students for scraping web pages by introducing them to tree structures and the Nokogiri gem.  Students coming out of Phase 0 should be familiar with the DOM.  Review the structure of the DOM and parent-child relationships.  Review basic CSS selectors.  Demonstrate working with Nokogiri.

* **<a name="single-responsibility"></a>Single Responsibility:**

  Discuss single responsibility of methods and the separation of concerns between classes.  Reiterate the benefits of single responsibility.  Each method should be responsible for doing one thing.  Each class or module should serve one purpose and everything that it does (e.g., methods) should serve that purpose.  Present students with a design decision to make and alternative solutions.  In groups, students should discuss the impact that the solution would have on the changeability and reuse of the classes involved.

#### Thursday

* *No lecture, mock assessments*

#### Friday

* **<a name="model-view-controller"></a>Model View Controller:**

  Introduce students to the model-view-controller design pattern.  Reference separation of concerns to highlight the different responsibilities of each MCV component:  models for data and related behaviors, the view for the user interface, and the controller for directing traffic.  Showcase an MVC-designed example (e.g., Bernie's Bistro).

* **<a name="managing-dependencies"></a>Managing Dependencies:**

  Following the information presented in Practical Object Oriented Design in Ruby, discuss with students the drawbacks to writing classes that are too tightly coupled.  In addition, present techniques for limiting dependencies.

## Week 3: Databases

#### Monday

* **<a name="schema-design"></a>Schema Design:**

  Connect the notion of modeling state and behavior in Ruby to modeling in a database schema.  Draw parallels between tables and classes, records and object instances, and fields and attributes.  Discuss primary and foreign keys.  As an exercise, design a schema for a website based on the information visible on the site (e.g., flickr).

* **<a name="databases"></a>Databases:**

  Discuss the organization of data in databases and how databases search for records;the application of the DRY principle to normalize a database; and the adding of indexes (e.g., benefits, costs, when to use).

#### Tuesday

* **<a name="object-relational-mapping"></a>Object-relational Mapping:**

  As students are now modeling systems both in Ruby and databases, introduce object-relational mapping.  Inform students that an ORM translates between Ruby and SQL.  Users send Ruby messages; the ORM translates them to SQL, executes the SQL command, and translates the result back to Ruby.


#### Wedesday

* **<a name="introduction-to-activerecord"></a>Introduction to ActiveRecord:**

  Introduce students to ActiveRecord.  Inform students that ActiveRecord is a gem that they will be using throughout the rest of DBC.  It is an ORM that provides classes from which the classes they write will inherit.  Introduce students to migrations for creating tables, class methods for retrieving and creating records, instance methods that match table field names, validations, and callbacks.  Highlight that ActiveRecord expects that users follow conventions in naming and particularly how class names match table names.

* **<a name="sql-injection"></a>SQL Injection:**

  Introduce students to the dangers of SQL injection attacks and how to safeguard against them.  Guide students through a hacking example:  [Hack Me App](https://github.com/Devbootcamp/hack-me-app), but warn them not to try this on real websites as there could be consequences.


#### Thursday

* *No lecture, assessments*

#### Friday

* **<a name="activerecord-associations"></a>ActiveRecord Associations:**

  Guide students through setting up has_many, belongs_to, and has_many through associations in their models.  Discuss the expectations that ActiveRecord has when we declare an association (e.g., class name, foreign key name, source associations, etc.).  Then, rename associations, supplying ActiveRecord with the data that it needs.  Have students infer the SQL queries that will be generated by methods and trace the finding of records in a mock database.

