# The setup
```
require 'sqlite3'

db = SQLite3::Database.open "data.db"

db.execute <<-SQL
  create table foobar (
    name varchar(30),
    val int
  );
SQL

#=> fill the database table with this stuff -->
#=> ["foo", 1]["bar", 2]["baz", 3]
```

# Make db files show in sublime
  command , -> delete *.db from file exclude pattern

# Execute vs. execute2
- execute 2 will return the field names as the first result of your query
```
db.execute2("select * from foobar")[0] #=> ["name", "val"]
```

# Preparing statements use throughout your code
```
query = db.prepare("select * from foobar")
query.execute do |result|
  result.each{|row| print row}
end
#=> ["foo", 1]["bar", 2]["baz", 3]["food", 1]["bard", 2]["bazd", 3]
```

# Using placeholders in SQL statement
Three different options, ?, ?n, :foo

#### ?
```
query = db.prepare("select * from numbers where name = ?")
query.execute "foo" do |result|
  result.each{|row| print row}
end
#=> ["foo", 1]
```

#### ?n
```
query = db.prepare("select * from numbers where name = ?2")
query.execute "foo", "bar" do |result|
  result.each{|row| print row}
end
#=> ["bar", 2]
```

#### :name
```
query = db.prepare("select * from numbers where name = :name")
query.execute "name" => "baz" do |result|
  result.each{|row| print row}
end
#=> ["baz", 3]
```