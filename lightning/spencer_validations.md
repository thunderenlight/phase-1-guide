![diagram](http://imgur.com/icckJlZ.png)

Validation is a function of ActiveRecord that ensures that certain aspects of an objects' state are validated before
entering the database.

This is the step that picks up where the SQL '?' syntax leaves off.

There are two primary functions:
1. Ensure that nothing malicious is being input into the database.
2. Ensure that data is being properly maintained. Aka prevent "dirtying up" the database.

Syntax within your model: | validates :column_name, validation_helper: args |

Methods that trigger validations:

create
create!
save
save!
update
update!

Methods that skip validations (dangerous):

decrement!
decrement_counter
increment!
increment_counter
toggle!
touch
update_all
update_attribute
update_column
update_columns
update_counters

Validation helpers:

acceptance: Validates that a checkbox was completed from a user.
validates_associated: Validates the association that your model may have with others.
format: Validates that a database entry matches a particular format. This is powerful when paired with regex.
numericality: Validates that a database entry only contains numerical values.
presence: Validates that a particular element is not null.
absence: The opposite of presence.
uniqueness: Validates that there are no repeats of a particular entry within the database.

If this isn't enough you can use the 'validate' syntax to pass in your own method.


