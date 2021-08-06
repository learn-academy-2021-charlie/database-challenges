 rails new rolodex -d postgresql -T
 cd rolodex_challenge
 rails db:create
 rails generate model Person first_name:string last_name:string phone:string
 rails db:migrate
 rails c

 Person.create first_name: "Chris", last_name: "Mackey", phone: "777-333-5555"
 Person.create first_name: "Bob", last_name: "Mack", phone: "999-333-5555"
Person.create first_name: "Dave", last_name: "Smith", phone: "999-333-8888"
Person.create first_name: "Fred", last_name: "Thompson", phone: "999-222-8888"
Person.create first_name: "Sarah", last_name: "Proctor", phone: "999-222-9999"
Person.all
Person.create first_name: "Todd", last_name: "Comte", phone: "999-888-9999" 
Person.create first_name: "Todd", last_name: "Mackey", phone: "999-888-9999" 
Person.where last_name: "Mackey"
 Todd = Person.find 7
 Todd.phone = "111-111-1111"
Todd.save
Person.all
Person.find 3
Person.find 3
Thirdperson = Person.find 3
 Thirdperson.firstname
 Thirdperson.first_name
 Todd
 Family
 Chris = Person.where first_name: "Chris"
  Family.phone = Chris.phone
  Family.phone
  Family