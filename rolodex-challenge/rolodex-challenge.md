
^C- Gracefully stopping, waiting for requests to finish
=== puma shutdown: 2021-08-04 14:57:15 -0700 ===
- Goodbye!
Exiting
learnacademy@LEARNs-MacBook-Air rolodex_challenge % rails db:migrate
learnacademy@LEARNs-MacBook-Air rolodex_challenge % code .
learnacademy@LEARNs-MacBook-Air rolodex_challenge % rails sever
rails aborted!
Don't know how to build task 'sever' (See the list of available tasks with `rails --tasks`)
/Users/learnacademy/Desktop/rolodex_challenge/bin/rails:5:in `<top (required)>'
/Users/learnacademy/Desktop/rolodex_challenge/bin/spring:10:in `block in <top (required)>'
/Users/learnacademy/Desktop/rolodex_challenge/bin/spring:7:in `<top (required)>'
(See full trace by running task with --trace)
learnacademy@LEARNs-MacBook-Air rolodex_challenge % rails server
=> Booting Puma
=> Rails 6.1.4 application starting in development
=> Run `bin/rails server --help` for more startup options
Puma starting in single mode...
* Puma version: 5.4.0 (ruby 3.0.0-p0) ("Super Flight")
*  Min threads: 5
*  Max threads: 5
*  Environment: development
*          PID: 17870
* Listening on http://127.0.0.1:3000
* Listening on http://[::1]:3000
Use Ctrl-C to stop
rails db:mirgrate
Started GET "/" for ::1 at 2021-08-04 15:03:26 -0700
   (2.0ms)  SELECT "schema_migrations"."version" FROM "schema_migrations" ORDER BY "schema_migrations"."version" ASC
Processing by Rails::WelcomeController#index as HTML
  Rendering /Users/learnacademy/.rvm/gems/ruby-3.0.0/gems/railties-6.1.4/lib/rails/templates/rails/welcome/index.html.erb
  Rendered /Users/learnacademy/.rvm/gems/ruby-3.0.0/gems/railties-6.1.4/lib/rails/templates/rails/welcome/index.html.erb (Duration: 11.5ms | Allocations: 415)
Completed 200 OK in 38ms (Views: 16.8ms | ActiveRecord: 0.0ms | Allocations: 3068)


rails generate model Person first_name:string last_name:string phone:string
^C- Gracefully stopping, waiting for requests to finish
=== puma shutdown: 2021-08-04 15:08:10 -0700 ===
- Goodbye!
Exiting
learnacademy@LEARNs-MacBook-Air rolodex_challenge % rails generate model Person first_name:string last_name:string phone:string
Running via Spring preloader in process 18079
      invoke  active_record
      create    db/migrate/20210804220856_create_people.rb
      create    app/models/person.rb
learnacademy@LEARNs-MacBook-Air rolodex_challenge % rails db:migrate     
== 20210804220856 CreatePeople: migrating =====================================
-- create_table(:people)
   -> 0.0441s
== 20210804220856 CreatePeople: migrated (0.0443s) ============================

learnacademy@LEARNs-MacBook-Air rolodex_challenge % rails c
Running via Spring preloader in process 18131
Loading development environment (Rails 6.1.4)
3.0.0 :001 > Person.create first_name:"raul", last_name:"Marquez", phone:"4427773030"
  TRANSACTION (16.7ms)  BEGIN
  Person Create (1.5ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "raul"], ["last_name", "Marquez"], ["phone", "4427773030"], ["created_at", "2021-08-04 22:15:25.314170"], ["updated_at", "2021-08-04 22:15:25.314170"]]
  TRANSACTION (3.9ms)  COMMIT
 => #<Person id: 1, first_name: "raul", last_name: "Marquez", phone: "4427773030", created_at: "2021-08-04 22:15:25.314170000 +0000", updated_at: "2021-08-04 22:15:25.314170000 +0000">
3.0.0 :002 > Person.create first_name:"Galadoe", last_name:"Kulee", phone:"4427773031"
  TRANSACTION (0.2ms)  BEGIN
  Person Create (0.9ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Galadoe"], ["last_name", "Kulee"], ["phone", "4427773031"], ["created_at", "2021-08-04 22:16:40.756818"], ["updated_at", "2021-08-04 22:16:40.756818"]]
  TRANSACTION (26.3ms)  COMMIT
 => #<Person id: 2, first_name: "Galadoe", last_name: "Kulee", phone: "4427773031", created_at: "2021-08-04 22:16:40.756818000 +0000", updated_at: "2021-08-04 22:16:40.756818000 +0000">
3.0.0 :003 > Person.create first_name:"Jared", last_name:"Thomas", phone:"4427773032"
  TRANSACTION (0.7ms)  BEGIN
  Person Create (0.4ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Jared"], ["last_name", "Thomas"], ["phone", "4427773032"], ["created_at", "2021-08-04 22:17:20.660452"], ["updated_at", "2021-08-04 22:17:20.660452"]]
  TRANSACTION (25.5ms)  COMMIT
 => #<Person id: 3, first_name: "Jared", last_name: "Thomas", phone: "4427773032", created_at: "2021-08-04 22:17:20.660452000 +0000", updated_at: "2021-08-04 22:17:20.660452000 +0000">
3.0.0 :004 > Person.create first_name:"Ruben", last_name:"Marquez", phone:"4427773033"
  TRANSACTION (0.6ms)  BEGIN
  Person Create (0.3ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Ruben"], ["last_name", "Marquez"], ["phone", "4427773033"], ["created_at", "2021-08-04 22:18:13.445878"], ["updated_at", "2021-08-04 22:18:13.445878"]]
  TRANSACTION (0.8ms)  COMMIT
 => #<Person id: 4, first_name: "Ruben", last_name: "Marquez", phone: "4427773033", created_at: "2021-08-04 22:18:13.445878000 +0000", updated_at: "2021-08-04 22:18:13.445878000 +0000">
3.0.0 :005 > Person.create first_name:"Emma", last_name:"Marquez", phone:"4427773034"
  TRANSACTION (0.2ms)  BEGIN
  Person Create (0.4ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Emma"], ["last_name", "Marquez"], ["phone", "4427773034"], ["created_at", "2021-08-04 22:18:52.659791"], ["updated_at", "2021-08-04 22:18:52.659791"]]
  TRANSACTION (26.2ms)  COMMIT
 => #<Person id: 5, first_name: "Emma", last_name: "Marquez", phone: "4427773034", created_at: "2021-08-04 22:18:52.659791000 +0000", updated_at: "2021-08-04 22:18:52.659791000 +0000">
3.0.0 :006 > Person.all
  Person Load (0.6ms)  SELECT "people".* FROM "people" /* loading for inspect */ LIMIT $1  [["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Person id: 1, first_name: "raul", last_name: "Marquez", phone: "4427773030", created_at: "2021-08-04 22:15:25.314170000 +0000", updated_at: "2021-08-04 22:15:25.314170000 +0000">, #<Person id: 2, first_name: "Galadoe", last_name: "Kulee", phone: "4427773031", created_at: "2021-08-04 22:16:40.756818000 +0000", updated_at: "2021-08-04 22:16:40.756818000 +0000">, #<Person id: 3, first_name: "Jared", last_name: "Thomas", phone: "4427773032", created_at: "2021-08-04 22:17:20.660452000 +0000", updated_at: "2021-08-04 22:17:20.660452000 +0000">, #<Person id: 4, first_name: "Ruben", last_name: "Marquez", phone: "4427773033", created_at: "2021-08-04 22:18:13.445878000 +0000", updated_at: "2021-08-04 22:18:13.445878000 +0000">, #<Person id: 5, first_name: "Emma", last_name: "Marquez", phone: "4427773034", created_at: "2021-08-04 22:18:52.659791000 +0000", updated_at: "2021-08-04 22:18:52.659791000 +0000">]>
3.0.0 :007 > Person.create first_name:"Sofia", last_name:"Marquez", phone:"4427773035"
  TRANSACTION (9.1ms)  BEGIN
  Person Create (24.9ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Sofia"], ["last_name", "Marquez"], ["phone", "4427773035"], ["created_at", "2021-08-04 22:21:24.651199"], ["updated_at", "2021-08-04 22:21:24.651199"]]
  TRANSACTION (1.1ms)  COMMIT
 => #<Person id: 6, first_name: "Sofia", last_name: "Marquez", phone: "4427773035", created_at: "2021-08-04 22:21:24.651199000 +0000", updated_at: "2021-08-04 22:21:24.651199000 +0000">
3.0.0 :008 > Person.where last_name:"Marquez"
  Person Load (0.4ms)  SELECT "people".* FROM "people" WHERE "people"."last_name" = $1 /* loading for inspect */ LIMIT $2  [["last_name", "Marquez"], ["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Person id: 1, first_name: "raul", last_name: "Marquez", phone: "4427773030", created_at: "2021-08-04 22:15:25.314170000 +0000", updated_at: "2021-08-04 22:15:25.314170000 +0000">, #<Person id: 4, first_name: "Ruben", last_name: "Marquez", phone: "4427773033", created_at: "2021-08-04 22:18:13.445878000 +0000", updated_at: "2021-08-04 22:18:13.445878000 +0000">, #<Person id: 5, first_name: "Emma", last_name: "Marquez", phone: "4427773034", created_at: "2021-08-04 22:18:52.659791000 +0000", updated_at: "2021-08-04 22:18:52.659791000 +0000">, #<Person id: 6, first_name: "Sofia", last_name: "Marquez", phone: "4427773035", created_at: "2021-08-04 22:21:24.651199000 +0000", updated_at: "2021-08-04 22:21:24.651199000 +0000">]>
3.0.0 :009 > Person.last phone:"555555555"
Traceback (most recent call last):
        1: from (irb):9:in `<main>'
TypeError (can't convert Hash into Integer)
3.0.0 :010 > Sofia.phone = "555555555"
Traceback (most recent call last):
        2: from (irb):9:in `<main>'
        1: from (irb):10:in `rescue in <main>'
NameError (uninitialized constant Sofia)
3.0.0 :011 > raul
Traceback (most recent call last):
        2: from (irb):10:in `<main>'
        1: from (irb):11:in `rescue in <main>'
NameError (undefined local variable or method `raul' for main:Object)
3.0.0 :012 > "raul"
 => "raul"
3.0.0 :013 > "raul".update phone:'5555555555'
Traceback (most recent call last):
        1: from (irb):13:in `<main>'
NoMethodError (undefined method `update' for "raul":String)
3.0.0 :014 > raul.update phone:'5555555555'
Traceback (most recent call last):
        2: from (irb):13:in `<main>'
        1: from (irb):14:in `rescue in <main>'
NameError (undefined local variable or method `raul' for main:Object)
3.0.0 :015 > Person.all
  Person Load (0.5ms)  SELECT "people".* FROM "people" /* loading for inspect */ LIMIT $1  [["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Person id: 1, first_name: "raul", last_name: "Marquez", phone: "4427773030", created_at: "2021-08-04 22:15:25.314170000 +0000", updated_at: "2021-08-04 22:15:25.314170000 +0000">, #<Person id: 2, first_name: "Galadoe", last_name: "Kulee", phone: "4427773031", created_at: "2021-08-04 22:16:40.756818000 +0000", updated_at: "2021-08-04 22:16:40.756818000 +0000">, #<Person id: 3, first_name: "Jared", last_name: "Thomas", phone: "4427773032", created_at: "2021-08-04 22:17:20.660452000 +0000", updated_at: "2021-08-04 22:17:20.660452000 +0000">, #<Person id: 4, first_name: "Ruben", last_name: "Marquez", phone: "4427773033", created_at: "2021-08-04 22:18:13.445878000 +0000", updated_at: "2021-08-04 22:18:13.445878000 +0000">, #<Person id: 5, first_name: "Emma", last_name: "Marquez", phone: "4427773034", created_at: "2021-08-04 22:18:52.659791000 +0000", updated_at: "2021-08-04 22:18:52.659791000 +0000">, #<Person id: 6, first_name: "Sofia", last_name: "Marquez", phone: "4427773035", created_at: "2021-08-04 22:21:24.651199000 +0000", updated_at: "2021-08-04 22:21:24.651199000 +0000">]>
3.0.0 :016 > sofia = person.find 6
Traceback (most recent call last):
        1: from (irb):16:in `<main>'
NameError (undefined local variable or method `person' for main:Object)
3.0.0 :017 > sofia = Person.find 6
  Person Load (0.3ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 6], ["LIMIT", 1]]
 => #<Person id: 6, first_name: "Sofia", last_name: "Marquez", phone: "4427773035", cre...
3.0.0 :018 > sofia.phone = "555555555"
 => "555555555"
3.0.0 :019 > sofia.save
  TRANSACTION (2.7ms)  BEGIN
  Person Update (2.9ms)  UPDATE "people" SET "phone" = $1, "updated_at" = $2 WHERE "people"."id" = $3  [["phone", "555555555"], ["updated_at", "2021-08-04 22:40:23.245299"], ["id", 6]]
  TRANSACTION (4.5ms)  COMMIT
 => true
3.0.0 :020 > Person.all
  Person Load (10.5ms)  SELECT "people".* FROM "people" /* loading for inspect */ LIMIT $1  [["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Person id: 1, first_name: "raul", last_name: "Marquez", phone: "4427773030", created_at: "2021-08-04 22:15:25.314170000 +0000", updated_at: "2021-08-04 22:15:25.314170000 +0000">, #<Person id: 2, first_name: "Galadoe", last_name: "Kulee", phone: "4427773031", created_at: "2021-08-04 22:16:40.756818000 +0000", updated_at: "2021-08-04 22:16:40.756818000 +0000">, #<Person id: 3, first_name: "Jared", last_name: "Thomas", phone: "4427773032", created_at: "2021-08-04 22:17:20.660452000 +0000", updated_at: "2021-08-04 22:17:20.660452000 +0000">, #<Person id: 4, first_name: "Ruben", last_name: "Marquez", phone: "4427773033", created_at: "2021-08-04 22:18:13.445878000 +0000", updated_at: "2021-08-04 22:18:13.445878000 +0000">, #<Person id: 5, first_name: "Emma", last_name: "Marquez", phone: "4427773034", created_at: "2021-08-04 22:18:52.659791000 +0000", updated_at: "2021-08-04 22:18:52.659791000 +0000">, #<Person id: 6, first_name: "Sofia", last_name: "Marquez", phone: "555555555", created_at: "2021-08-04 22:21:24.651199000 +0000", updated_at: "2021-08-04 22:40:23.245299000 +0000">]>
3.0.0 :021 > Person.find 3
  Person Load (0.6ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]
 => #<Person id: 3, first_name: "Jared", last_name: "Thomas", phone: "4427773032", created_at: "2021-08-04 22:17:20.660452000 +0000", updated_at: "2021-08-04 22:17:20.660452000 +0000">
3.0.0 :022 > Person 3.first_name
Traceback (most recent call last):
        1: from (irb):22:in `<main>'
NoMethodError (undefined method `first_name' for 3:Integer)
3.0.0 :023 > first_name 3
Traceback (most recent call last):
        2: from (irb):22:in `<main>'
        1: from (irb):23:in `rescue in <main>'
NoMethodError (undefined method `first_name' for main:Object)
3.0.0 :024 > Person.first_name 3
Traceback (most recent call last):
        2: from (irb):23:in `<main>'
        1: from (irb):24:in `rescue in <main>'
NoMethodError (undefined method `first_name' for Person:Class)
Did you mean?  sti_name
3.0.0 :025 > Person.first_name.3
Traceback (most recent call last):
SyntaxError ((irb):25: no .<digit> floating literal anymore; put 0 before dot)
Person.first_name.3
                 ^~
3.0.0 :026 > Person.first_name 03
Traceback (most recent call last):
        2: from (irb):25:in `<main>'
        1: from (irb):26:in `rescue in <main>'
NoMethodError (undefined method `first_name' for Person:Class)
Did you mean?  sti_name
3.0.0 :027 > Person.sti_name
 => "Person"
3.0.0 :028 > Person.sti_name 3
Traceback (most recent call last):
        1: from (irb):28:in `<main>'
ArgumentError (wrong number of arguments (given 1, expected 0))
3.0.0 :029 > names = Person.where.not(last_name:'Marquez')
  Person Load (0.5ms)  SELECT "people".* FROM "people" WHERE "people"."last_name" != $1 /* loading for inspect */ LIMIT $2  [["last_name", "Marquez"], ["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Person id: 2, first_name: "Galadoe", last_name: "Kulee", phone: "4427773031", created_at: "2021-08-04 22:...
3.0.0 :030 > names.destroy_all
  Person Load (0.4ms)  SELECT "people".* FROM "people" WHERE "people"."last_name" != $1  [["last_name", "Marquez"]]
  TRANSACTION (21.9ms)  BEGIN
  Person Destroy (0.4ms)  DELETE FROM "people" WHERE "people"."id" = $1  [["id", 2]]
  TRANSACTION (0.9ms)  COMMIT
  TRANSACTION (0.2ms)  BEGIN
  Person Destroy (0.4ms)  DELETE FROM "people" WHERE "people"."id" = $1  [["id", 3]]
  TRANSACTION (0.7ms)  COMMIT
 => [#<Person id: 2, first_name: "Galadoe", last_name: "Kulee", phone: "4427773031", created_at: "2021-08-04 22:16:40.756818000 +0000", updated_at: "2021-08-04 22:16:40.756818000 +0000">, #<Person id: 3, first_name: "Jared", last_name: "Thomas", phone: "4427773032", created_at: "2021-08-04 22:17:20.660452000 +0000", updated_at: "2021-08-04 22:17:20.660452000 +0000">]
3.0.0 :031 > Person.all
  Person Load (8.5ms)  SELECT "people".* FROM "people" /* loading for inspect */ LIMIT $1  [["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Person id: 1, first_name: "raul", last_name: "Marquez", phone: "4427773030", created_at: "2021-08-04 22:15:25.314170000 +0000", updated_at: "2021-08-04 22:15:25.314170000 +0000">, #<Person id: 4, first_name: "Ruben", last_name: "Marquez", phone: "4427773033", created_at: "2021-08-04 22:18:13.445878000 +0000", updated_at: "2021-08-04 22:18:13.445878000 +0000">, #<Person id: 5, first_name: "Emma", last_name: "Marquez", phone: "4427773034", created_at: "2021-08-04 22:18:52.659791000 +0000", updated_at: "2021-08-04 22:18:52.659791000 +0000">, #<Person id: 6, first_name: "Sofia", last_name: "Marquez", phone: "555555555", created_at: "2021-08-04 22:21:24.651199000 +0000", updated_at: "2021-08-04 22:40:23.245299000 +0000">]>
3.0.0 :032 > Marquez = Person.find
Traceback (most recent call last):
        1: from (irb):32:in `<main>'
ActiveRecord::RecordNotFound (Couldn't find Person without an ID)
3.0.0 :033 > Marquez = Person.find 1
  Person Load (12.2ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
 => #<Person id: 1, first_name: "raul", last_name: "Marquez", phone: "4427773030", created_at: "2021-08-04 22:15:25.314170000 +0000", upda...
3.0.0 :034 > Marquez_main = Person.find 4
  Person Load (0.5ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 4], ["LIMIT", 1]]
 => #<Person id: 4, first_name: "Ruben", last_name: "Marquez", phone: "4427773033", created_at: "2021-08-04 22:18:13.445878000 +0000", upd...
3.0.0 :035 > Marquez.update phone: Marquez_main.phone
  TRANSACTION (0.5ms)  BEGIN
  Person Update (5.9ms)  UPDATE "people" SET "phone" = $1, "updated_at" = $2 WHERE "people"."id" = $3  [["phone", "4427773033"], ["updated_at", "2021-08-04 23:20:46.417218"], ["id", 1]]
  TRANSACTION (0.5ms)  COMMIT
 => true
3.0.0 :036 > Person.all
  Person Load (17.5ms)  SELECT "people".* FROM "people" /* loading for inspect */ LIMIT $1  [["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Person id: 4, first_name: "Ruben", last_name: "Marquez", phone: "4427773033", created_at: "2021-08-04 22:18:13.445878000 +0000", updated_at: "2021-08-04 22:18:13.445878000 +0000">, #<Person id: 5, first_name: "Emma", last_name: "Marquez", phone: "4427773034", created_at: "2021-08-04 22:18:52.659791000 +0000", updated_at: "2021-08-04 22:18:52.659791000 +0000">, #<Person id: 6, first_name: "Sofia", last_name: "Marquez", phone: "555555555", created_at: "2021-08-04 22:21:24.651199000 +0000", updated_at: "2021-08-04 22:40:23.245299000 +0000">, #<Person id: 1, first_name: "raul", last_name: "Marquez", phone: "4427773033", created_at: "2021-08-04 22:15:25.314170000 +0000", updated_at: "2021-08-04 23:20:46.417218000 +0000">]>
3.0.0 :037 > Marquez.update phone: "5555555555"
  TRANSACTION (0.2ms)  BEGIN
  Person Update (0.4ms)  UPDATE "people" SET "phone" = $1, "updated_at" = $2 WHERE "people"."id" = $3  [["phone", "5555555555"], ["updated_at", "2021-08-04 23:22:47.174237"], ["id", 1]]
  TRANSACTION (3.8ms)  COMMIT
 => true
3.0.0 :038 > Person.all
  Person Load (1.0ms)  SELECT "people".* FROM "people" /* loading for inspect */ LIMIT $1  [["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Person id: 4, first_name: "Ruben", last_name: "Marquez", phone: "4427773033", created_at: "2021-08-04 22:18:13.445878000 +0000", updated_at: "2021-08-04 22:18:13.445878000 +0000">, #<Person id: 5, first_name: "Emma", last_name: "Marquez", phone: "4427773034", created_at: "2021-08-04 22:18:52.659791000 +0000", updated_at: "2021-08-04 22:18:52.659791000 +0000">, #<Person id: 6, first_name: "Sofia", last_name: "Marquez", phone: "555555555", created_at: "2021-08-04 22:21:24.651199000 +0000", updated_at: "2021-08-04 22:40:23.245299000 +0000">, #<Person id: 1, first_name: "raul", last_name: "Marquez", phone: "5555555555", created_at: "2021-08-04 22:15:25.314170000 +0000", updated_at: "2021-08-04 23:22:47.174237000 +0000">]>
3.0.0 :039 >
