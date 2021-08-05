created a branch
created a rails app (then cd into in)

rails db: create

#created the models
rails g model Owner name:string address:string card_id:bigint

rails g model Card number:bigint exp_date:string owner:string

#Migrated the two models
rails db:migrate

#Went to app < models
card.rb
class Card < ApplicationRecord
  belong_to :owner
end

owner.rb
class Owner < ApplicationRecord
  has_many :cards
end

#Created three owners
Owner.create name: 'Conrad', address: '123 Street'
Owner.create name: 'Galadoe', address: '123 Main St'
Owner.create name: 'John', address: '123 Green St'

#Created credit card and db for each owner
card1 = Owner.first
card1.cards.create number: 1234567890,  exp_date:'09/22'

card2 = Owner.find 2
card2.cards.create number: 9876543201, exp_date: '07/22'

card3 = Owner.find 3
card3.cards.create number: 3456718902, exp_date: '10/22'

#Add 2 more credit cards to one of the owners
card2.cards.create number: 3455678934, exp_date: '12/22'
card2.cards.create number: 56789034434, exp_date: '04/22'

#Add a credit limit to each card
rails g migration add_column_credit_limit
*go into the migration file we created (editor)

class AddColumnCreditLimit < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :credit_limit, :float
  end
end

rails db: migrate

*in the rails console

first_card = Card.first
first_card.update credit_limit: 100.99

second_card = Card.find 2
second_card.update credit_limit: 500.01

*continue to do this for the remainder of cards



#Deleting a column
rails g migration remove_column_column_name
*go into the migration file we created (editor)

class RemoveColumnOwner < ActiveRecord::Migration[6.1]
  def change
    remove_column :table_name, :column_name *this is the syntax  
  end
end

rails db:migrate

#Adding a new column
rails g migration add_column_column_name
*go the migration file we created (editor)

class AddColumnOwnerId < ActiveRecord::Migration[6.1]
  def change
    add_column :table_name, :column_name, :data_type *this is the syntax
  end
end

rails db:migrate
