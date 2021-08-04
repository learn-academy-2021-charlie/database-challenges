Markdown notes

$ rails new rolodex_challenge -d postgresql -T
$ rails db:create
$ rails s
$ rails generate model Person first_name:string last_name:string phone:string 
$ rails c

- rails generate model Person first_name:string last_name:string phone:string 

1. John Doe 949-335-6725
2. Patrick Star 813-525-4291
3. Sponge Bob 555-424-7777
4. Michael Harper 808-239-6755
5. Balchinian Rogers 235-691-7433

- Add five family members into the Person table in the Rails console.

Person.create(first_name: 'John', last_name: 'Doe', phone: '949-335-6725')
Person.create(first_name: 'Patrick', last_name: 'Star', phone: '813-525-4291')
Person.create(first_name: 'Sponge', last_name: 'Bob', phone: '555-424-7777')
Person.create(first_name: 'Michael', last_name: 'Harper', phone: '808-239-6755')
Person.create(first_name: 'Balchinian', last_name: 'Rogers', phone: '235-691-7433')

- Retrieve all the items in the database.

Person.all

- Add yourself to the Person table.

Person.create(first_name: 'Conrad', last_name: 'Harper', phone: '85
8-472-7272')

- Retrieve all the entries that have the same last_name as you.

Person.where(last_name: 'Harper')

Person Load (1.0ms)  SELECT "people".* FROM "people" WHERE "people"."last_name" = $1 /* loading for inspect */ LIMIT $2  [["last_name", "Harper"], ["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Person id: 4, first_name: "Michael", last_name: "Harper", phone: "808-239-6755", created_at: "2021-08-04 21:34:56.599797000 +0000", updated_at: "2021-08-04 21:34:56.599797000 +0000">, #<Person id: 6, first_name: "Conrad", last_name: "Harper", phone: "858-472-7272", created_at: "2021-08-04 21:39:07.719164000 +0000", updated_at: "2021-08-04 21:39:07.719164000 +0000">]

 - Update the phone number of the last entry in the database.

 harper = Person.find 6

 Person Load (0.6ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 6], ["LIMIT", 1]]
 => #<Person id: 6, first_name: "Conrad", last_name: "Harper", phone: "858... 

 harper.update phone: '727-727-7272'

TRANSACTION (2.7ms)  BEGIN
  Person Update (9.0ms)  UPDATE "people" SET "phone" = $1, "updated_at" = $2 WHERE "people"."id" = $3  [["phone", "727-727-7272"], ["updated_at", "2021-08-04 21:43:20.598648"], ["id", 6]]
  TRANSACTION (4.9ms)  COMMIT
 => true 

- Retrieve the first_name of the third Person in the database.

sponge = Person.find 3
  Person Load (1.7ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]
 => #<Person id: 3, first_name: "Sponge", last_name: "Bob", phone: "555-42... 
3.0.0 :014 > sponge.first_name
 => "Sponge" 

Stretch:

- Update all the family members with the same last_name as you, to have the same phone number as you.

harper = Person.find 4
  Person Load (0.6ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 4], ["LIMIT", 1]]
 => #<Person id: 4, first_name: "Michael", last_name: "Harper", phone: "80... 
3.0.0 :016 > harper_main = Person.find 6
  Person Load (0.6ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 6], ["LIMIT", 1]]
 => #<Person id: 6, first_name: "Conrad", last_name: "Harper", phone: "727... 
3.0.0 :017 > harper.update phone: harper_main.phone
  TRANSACTION (6.6ms)  BEGIN
  Person Update (0.6ms)  UPDATE "people" SET "phone" = $1, "updated_at" = $2 WHERE "people"."id" = $3  [["phone", "727-727-7272"], ["updated_at", "2021-08-04 21:53:56.681173"], ["id", 4]]
  TRANSACTION (1.2ms)  COMMIT
 => true 

- Remove all family members that do not have your last_name.

names = Person.where.not(last_name: 'Harper')
  Person Load (1.0ms)  SELECT "people".* FROM "people" WHERE "people"."last_name" != $1 /* loading for inspect */ LIMIT $2  [["last_name", "Harper"], ["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Person id: 1, first_name: "John", last_nam... 

3.0.0 :026 > names.destroy_all
  Person Load (0.4ms)  SELECT "people".* FROM "people" WHERE "people"."last_name" != $1  [["last_name", "Harper"]]
  TRANSACTION (0.2ms)  BEGIN
  Person Destroy (0.5ms)  DELETE FROM "people" WHERE "people"."id" = $1  [["id", 1]]
  TRANSACTION (1.5ms)  COMMIT
  TRANSACTION (0.2ms)  BEGIN
  Person Destroy (0.4ms)  DELETE FROM "people" WHERE "people"."id" = $1  [["id", 2]]
  TRANSACTION (0.5ms)  COMMIT
  TRANSACTION (0.2ms)  BEGIN
  Person Destroy (4.6ms)  DELETE FROM "people" WHERE "people"."id" = $1  [["id", 3]]
  TRANSACTION (0.9ms)  COMMIT
  TRANSACTION (0.3ms)  BEGIN
  Person Destroy (0.6ms)  DELETE FROM "people" WHERE "people"."id" = $1  [["id", 5]]
  TRANSACTION (32.3ms)  COMMIT
 => [#<Person id: 1, first_name: "John", last_name: "Doe", phone: "949-335-6725", created_at: "2021-08-04 21:34:31.041018000 +0000", updated_at: "2021-08-04 21:34:31.041018000 +0000">, #<Person id: 2, first_name: "Patrick", last_name: "Star", phone: "813-525-4291", created_at: "2021-08-04 21:34:40.614866000 +0000", updated_at: "2021-08-04 21:34:40.614866000 +0000">, #<Person id: 3, first_name: "Sponge", last_name: "Bob", phone: "555-424-7777", created_at: "2021-08-04 21:34:49.564967000 +0000", updated_at: "2021-08-04 21:34:49.564967000 +0000">, #<Person id: 5, first_name: "Balchinian", last_name: "Rogers", phone: "235-691-7433", created_at: "2021-08-04 21:35:05.816968000 +0000", updated_at: "2021-08-04 21:35:05.816968000 +0000">] 

3.0.0 :027 > Person.all
  Person Load (21.8ms)  SELECT "people".* FROM "people" /* loading for inspect */ LIMIT $1  [["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Person id: 6, first_name: "Conrad", last_name: "Harper", phone: "727-727-7272", created_at: "2021-08-04 21:39:07.719164000 +0000", updated_at: "2021-08-04 21:43:20.598648000 +0000">, #<Person id: 4, first_name: "Michael", last_name: "Harper", phone: "727-727-7272", created_at: "2021-08-04 21:34:56.599797000 +0000", updated_at: "2021-08-04 21:53:56.681173000 +0000">]> 
