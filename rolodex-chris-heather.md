Set Up

Create a new Rails app named 'rolodex_challenge'.

<!-- rails new rolodex_challenge -d postgresql -T -->
<!-- cd rolodex_challenge -->

Create the database. The output in the terminal should look like this:
Created database 'rolodex_development'
Created database 'rolodex_test'

<!-- rails db:create -->

Generate a model called Person with a first_name, last_name, and phone. All fields should be strings.

 <!-- rails generate model Person first_name:string last_name:string phone:string -->

Run a migration to set up the database.

<!-- rails db:migrate -->

Open up Rails console.


<!-- rails c -->

Actions

Add five family members into the Person table in the Rails console.

<!-- Person.create first_name: "Taylor", last_name: "Curtis", phone: "823-928-3743" -->
<!-- Person.create first_name: "Raven", last_name: "Curtis", phone: "728-283-1243" -->
<!-- Person.create first_name: "Joshua", last_name: "Logan", phone: "738-371-3742" -->
<!-- Person.create first_name: "Andrew", last_name: "Luna", phone: "237-4233-1234" -->
<!-- first_name: "Cassandra", last_name: "Luna", phone: "237-4233-2344" -->

Retrieve all the items in the database.

Person.all

Add yourself to the Person table.

<!-- Person.create first_name: "Chris", last_name: "Luna", phone: "237-4233-4534"
Person.create first_name: "Heather", last_name: "Roulston", phone: "237-423-3434" -->

Retrieve all the entries that have the same last_name as you.
Update the phone number of the last entry in the database.
Retrieve the first_name of the third Person in the database.

Stretch Challenges

Update all the family members with the same last_name as you, to have the same phone number as you.
Remove all family members that do not have your last_name.