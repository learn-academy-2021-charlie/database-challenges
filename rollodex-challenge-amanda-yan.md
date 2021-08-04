# Challenge: Rolodex
- As a developer, I have been tasked with creating a database model that will be used in a rolodex application. 
- I want to ensure that the database behaves as expected and the necessary actions can be performed on the database instances.

## Set Up
- Create a new Rails app named 'rolodex_challenge'.
- Create the database. The output in the terminal should look like this:
- Created database 'rolodex_development'
- Created database 'rolodex_test'
- Generate a model called Person with a first_name, last_name, and phone. All fields should be strings.
- Run a migration to set up the database.
- Open up Rails console.
```ruby
$ rails new rolodex_challenge -d postgresql -T
# Output: webpacker successfully installed
$ cd rolodex_challenge
$ rails db:create
# Output
# Created database 'rolodex_development'
# Created database 'rolodex_test'
$ rails server
# Booting Puma
# ...
# Use Ctrl-C to stop 
# Open browser and localhost will see the page
$ rails generate model Person first_name:string last_name:string phone:string
$ rails db:migrate
# Check the folder：rolodex_challenge>app>models>person.rb
$ rails c
# Open up Rails console.
```
## Actions
- Add five family members into the Person table in the Rails console.
```ruby
3.0.0 :006 >Person.create first_name: "Jon", last_name: "Smith", phone: "(555)-555-5555"
```
- Retrieve all the items in the database.
```ruby
3.0.0 :006 > Person.all
# Output:
# Person Load (0.4ms) SELECT "people".* FROM "people" /* loading for inspect */ LIMIT $1 [["LIMIT", 11]]
#  => #<ActiveRecord::Relation [#<Person id: 1, first_name: "Jon", last_name: "Smith", phone: "(555)-555-5555", 
# created_at: "2021-08-04 21:53:53.288084000 +0000", updated_at: "2021-08-04 21:53:53.288084000 +0000">, 
# <Person id: 2, first_name: "Bob", last_name: "Smith", phone: "(555)-555-9875", 
# created_at: "2021-08-04 21:54:42.411622000 +0000", 
# updated_at: "2021-08-04 21:54:42.411622000 +0000">,
# #<Person id: 3, first_name: "Alex", last_name: "Smith", phone: "(555)-555-9975", 
# created_at: "2021-08-04 21:55:06.800599000 +0000", updated_at: "2021-08-04 21:55:06.800599000 +0000">, 
# #<Person id: 4, first_name: "Amy", last_name: "Smith", phone: "(555)-555-9875", 
# created_at: "2021-08-04 21:56:16.139819000 +0000", updated_at: "2021-08-04 21:56:16.139819000 +0000">, 
# #<Person id: 5, first_name: "todd", last_name: "Smith", phone: "(555)-555-9075", 
# created_at: "2021-08-04 21:57:22.189959000 +0000", updated_at: "2021-08-04 21:57:22.189959000 +0000">]>
```
- Add yourself to the Person table.
```ruby
3.0.0 :006 >Person.create first_name: "yan", last_name: "xu", phone: "(555)-555-6666"
```
- Retrieve all the entries that have the same last_name as you.
```ruby
3.0.0 :006 >Person.where last_name: "xu"
# Output
# Person Load (0.5ms) SELECT "people".* FROM "people" WHERE "people"."last_name" = $1 /* loading for inspect */ LIMIT $2
# [["last_name", "xu"], ["LIMIT", 11]]
#  => #<ActiveRecord::Relation [#<Person id: 6, first_name: "yan", last_name: "xu", phone: "(555)-555-9666", 
# created_at: "2021-08-04 22:00:29.557496000 +0000", updated_at: "2021-08-04 22:00:29.557496000 +0000">]>
```
- Update the phone number of the last entry in the database.
```ruby
3.0.0 :021 > last_person = Person.last
# Output
# Person Load (0.6ms) SELECT "people".* FROM "people" ORDER BY "people"."id" DESC LIMIT $1 [["LIMIT", 1]]
# => #<Person id: 6, first_name: "yan", last_name: "xu", phone: "(555)-555-9666", created_at: "2021-08-04 22:00:29.557496000 +0... 
# 3.0.0 :022 > last_person.phone = "(533)-566-1234"
# => "(533)-566-1234" 
3.0.0 :023 > last_person.save
# TRANSACTION (1.5ms) BEGIN
# Person Update (1.4ms) UPDATE "people" SET "phone" = $1, "updated_at" = $2 WHERE "people"."id" = $3 [["phone", "(533)-566-1234"],
# \ ["updated_at", "2021-08-04 22:23:31.208631"], ["id", 6]]
# TRANSACTION (5.0ms) COMMIT
# => true
```
- Retrieve the first_name of the third Person in the database.
```ruby
3.0.0 :024 > third_person = Person.find 3
# Person Load (0.2ms) SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2 [["id", 3], ["LIMIT", 1]]
# => #<Person id: 3, first_name: "Alex", last_name: "Smith", phone: "(555)-555-9975", created_at: "2021-08-04 21:55:06.80059900...
```

## Stretch Challenges

- Update all the family members with the same last_name as you, to have the same phone number as you.

- Remove all family members that do not have your last_name.
```ruby
3.0.0 :035 > Person.where("last_name != 'xu'").destroy_all
# Output: 
# Person Load (0.7ms) SELECT "people".* FROM "people" WHERE (last_name != 'xu')
#  TRANSACTION (0.2ms) BEGIN
#  Person Destroy (0.6ms) DELETE FROM "people" WHERE "people"."id" = $1 [["id", 2]]
#  TRANSACTION (16.0ms) COMMIT
#  TRANSACTION (0.4ms) BEGIN
#  Person Destroy (0.8ms) DELETE FROM "people" WHERE "people"."id" = $1 [["id", 3]]
#  TRANSACTION (0.6ms) COMMIT
#  TRANSACTION (0.4ms) BEGIN
#  Person Destroy (0.5ms) DELETE FROM "people" WHERE "people"."id" = $1 [["id", 4]]
#  TRANSACTION (0.7ms) COMMIT
#  TRANSACTION (0.4ms) BEGIN
#  Person Destroy (0.7ms) DELETE FROM "people" WHERE "people"."id" = $1 [["id", 5]]
#  TRANSACTION (0.6ms) COMMIT
#  => [#<Person id: 2, first_name: "Bob", last_name: "Smith", phone: "(555)-555-9875", 
# created_at: "2021-08-04 21:54:42.411622000 +0000", 
# updated_at: "2021-08-04 21:54:42.411622000 +0000">, 
# <Person id: 3, first_name: "Alex", last_name: "Smith", phone: "(555)-555-9975", 
# created_at: "2021-08-04 21:55:06.800599000 +0000", 
# updated_at: "2021-08-04 21:55:06.800599000 +0000">, 
#<Person id: 4, first_name: "Amy", last_name: "Smith", phone: "(555)-555-9875", 
# created_at: "2021-08-04 21:56:16.139819000 +0000", 
# updated_at: "2021-08-04 21:56:16.139819000 +0000">, 
# <Person id: 5, first_name: "todd", last_name: "Smith", phone: "(555)-555-9075", 
# created_at: "2021-08-04 21:57:22.189959000 +0000", 
# updated_at: "2021-08-04 21:57:22.189959000 +0000">] 
```
