Setup
Create a new rails application and database

<!-- $ rails new banking_app -d postgresql -T -->
<!-- cd banking_app
rails db:create -->

Create a model for owner
An owner has a name and address, and can have multiple credit cards

<!-- rails generate model Owner name:string address:string  -->

Create a model for credit card
A credit card has a number, an expiration date, and an owner

<!-- rails generate model Credit number:string expiration_date:string owner_id:integer -->

Challenges

Create three owners and save them in the database

<!-- Owner.create name: "Chris Luna", address: "1234 street"
Owner.create name: "Yan Xu", address: "5678 street"
Owner.create name: "Sarah Proctor", address: "9123 street" -->

Create a credit card in the database for each owner

<!-- chris = Owner.first
chris.credits.create number: "9283-3849-1827-1234", expiration_date: "09-22" -->

<!-- yan = Owner.second
yan.credits.create number: "9213-1244-5234-6434", expiration_date: "04-22" -->

<!-- sarah = Owner.third
sarah.credits.create number: "3241-4634-6523-2342", expiration_date: "08-23" -->

Add two more credit cards to one of the owners

<!-- sarah.credits.create number: "3241-4634-2443-2323", expiration_date: "03-21"
sarah.credits.create number: "3241-4634-6523-2323", expiration_date: "08-21" -->

Stretch Challenge
Add a credit limit to each card

<!-- rails generate migration add_credit_limit_to_credit -->
<!-- rails db:migrate -->
<!-- Credit.update_all credit_limit: 1000 -->

Find the total credit extended to the owner with multiple credit cards

<!-- sarah = Owner.third -->
<!-- person = sarah.credits -->
<!-- person.sum(:credit_limit) -->