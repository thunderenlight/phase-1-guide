Migrations are a feature of Active Record that allows you to evolve your database schema over time. Rather than write schema modifications in pure SQL, migrations allow you to use an easy Ruby DSL (Domain Specific Language) to describe changes to your tables.

a migration is an update to the database and schema using ruby instead of SQL

The life-cycle of a migration:

 - Creation
 	- A migration is kept with a timestamped file name
 	- Modifiers for creating migrations:
 		-limit (size of field value)
 		-precision (size of decimal value)
 		-scale (size of digits after a decimal)
 		-polymorphic (adds belongs_to column)
 		-null (true or false)
 - Written Form
 	- Create
 	- Join
 	- Change
 		-Modifying methods are available, as well as using 'execute' with SQL
 		-add_column
		-add_index
		-add_reference
		-add_timestamps
		-create_table
		-create_join_table
		-drop_table (must supply a block)
		-drop_join_table (must supply a block)
		-remove_timestamps
		-rename_column
		-rename_index
		-remove_reference
		-rename_table

		-for complex migrations that active record doesn't know how to reverse one should use reversible
 - Running
 	- rake db:migrate
 	- roll back to an earlier version

[rails guide](http://edgeguides.rubyonrails.org/migrations.html#migration-overview)

[helpful link 1](http://archive.railsforum.com/viewtopic.php?id=1011)

[helpful link 2](http://www.packtpub.com/article/Working-with-Rails-ActiveRecord-Migrations-Models-Scaffolding-and-Database-Completion)
