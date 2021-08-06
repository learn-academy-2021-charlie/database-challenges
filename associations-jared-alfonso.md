# Rails Active Record Associations

# Banking Challenge

## Setup

**Create a new rails application and database**
rails new banking_challenge -d postgresql -T
rails db:create

**Create a model for owner**

- create a table for Owner
  rails generate model Owner name:string address:string
- gonna need another table for multiple cards

**An owner has a name and address, and can have multiple credit cards**
_In the migration_
create_table :owners do |t|
t.string :name
t.string :address

      t.timestamps
    end

_in the Owner model_
class Owner < ApplicationRecord
has_many :card_cards
end

**Create a model for credit card**
rails generate model CreditCard number:integer expiration:date customer_id:integer

**A credit card has a number, an expiration date, and an owner**
_In the migration_
create_table :credit_cards do |t|
t.integer :number
t.date :expiration
t.integer :customer_id

      t.timestamps
    end

_In the CreditCard model_
class CreditCard < ApplicationRecord
belongs_to :owner
end

## Challenges

**Create three owners and save them in the database**
DON'T FORGET TO GO INTO THE RAILS CONSOLE
to CREATE record, we use the .create method on the Model

Owner.create(name: "John",address: "1 John Lane")
Owner.create(name:"Reinhardt" ,address: "3030 Blizzard Road")
Owner.create(name:"Freddy" ,address:"1021 Elm Street")

**Create a credit card in the database for each owner**

j = Owner.where(name: "John").first
j.credit_cards.create(number: 55555,expiration:'12/10/2020')



**Add two more credit cards to one of the owners**

## Stretch Challenge

**Add a credit limit to each card**
**Find the total credit extended to the owner with multiple credit cards**

## Table Relationships

one-to-many

has_one

has_many

one-to-one
many-to-many

## to go back a migration and fix a mistake:

we accidentally used customer_id instead of owner_id.

we used:

`rails db:rollback`

then fixed the migration

then ran:

`rails db:migrate`
