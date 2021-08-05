<!-- Create a new rails application and database
rails new association -d postgresql -T
cd migration
rails db:create

Create a model for owner
An owner has a name and address, and can have multiple credit cards
-rails g model Owner name:string address:string

Create a model for credit card
A credit card has a number, an expiration date, and an owner
-rails g model CreditCard number:integer expiration:string credit_id:integer

Challenges
Create three owners and save them in the database
Owner.create name:'name' address:'adress' x3


FIXED ERROR
change column name.
-rails g migrastion rename_credit_id_to_owner_id
--> go inside the class file
--> rename_column :tablename, :oldcolumnname, :newcolumnname
--> rails db:migrate

<!-- Create a credit card in the database for each owner -->
mr_bob = Owner.first
mr_bob.credit_cards.create number:12345, expiration:'March 2025'
x3


<!-- Add two more credit cards to one of the owners  -->
mr_bob.credit_cards.create "" x2

<!-- Stretch Challenge
Add a credit limit to each card -->
--> rails g migration add_columns_to_credit_Cards
--> inside class file
--> add_column :credit_cards, :credit_limit, :integer
--limit = CreditCard.all
--> limit.update credit_limit:1000000


<!-- Find the total credit extended to the owner with multiple credit cards -->

mr_bobs_credit = CreditCard.where owner_id:1

mr_bobs_credit.sum( :credit_limit)ß
 => 3000000 

 <!-- alternate approach -->
 test = CreditCard.all
 test.select( :owner_id) // shows just the  owner_id columns