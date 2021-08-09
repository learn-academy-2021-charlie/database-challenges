$ rails new banking_challenge -d postgresql -T
$ rails db:create
$ rails g model owner name:string address:string
$ rails g model credit_card number:bigint expiration:string

class CreateOwners < ActiveRecord::Migration[6.1]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end

class CreateCreditCards < ActiveRecord::Migration[6.1]
  def change
    create_table :credit_cards do |t|
      t.belongs_to :owner
      t.bigint :number
      t.string :expiration

      t.timestamps
    end
  end
end

$ rails db:migrate

class Owner < ApplicationRecord
  has_many :credit_cards
end

  # In rails console:
Owner.create name:'kelen', address:'my-house'
me = Owner.first
CreditCard.create number:1232352345, expiration:'some string', owner_id:me.id

$ rails g migration add_limit_to_credit_card
  class AddLimitToCreditCard < ActiveRecord::Migration[6.1]
    def change
      add_column :credit_cards, :limit, :bigint
    end
  end

$ rails db:migrate

  # In rails console:
CreditCard.where(owner_id:1).sum(:limit)
    => 0
CreditCard.where(owner_id:1).update_all limit:5000
CreditCard.where(owner_id:1).sum(:limit)
    => 15000
