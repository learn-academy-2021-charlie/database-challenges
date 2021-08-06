Validations Challenges
<!-- Create a Rails application called company_contacts. The app will have a PostgreSQL database. -->

$ rails new company_contacts -d postgresql -T

cd company_contacts

rails db:create

bundle add rspec-rails

rails generate rspec:install

<!-- Generate a model called Account that has a username, a password, and an email. -->

rails g model Account username:string password:string email:string

rails db:migrate

rspec spec/models/account_spec.rb

<!-- All stories should have accompanying model specs. -->

Developer Stories

<!-- As a developer, I need username, password, and email to be required. -->

RSpec.describe Account, type: :model do
  it 'is valid with valid attributes' do
    account = Account.create(username: 'username', password: 'password', email: 'email.com')
    expect(account).to be_valid
  end
end

class Account < ApplicationRecord
end

it 'is not valid without a username' do
    username = Account.create(password: 'password', email: 'email.com')
    expect(username.errors[:username]).to_not be_empty
  end
  it 'is not valid without a password' do
    password = Account.create(username: 'random', email: 'email1.com')
    expect(password.errors[:password]).to_not be_empty
  end
  it 'is not valid without a email' do
    email = Account.create(username: 'random1', password: 'password1')
    expect(email.errors[:email]).to_not be_empty
  end
end

class Account < ApplicationRecord
    validates :username, presence:true
    validates :password, presence:true
    validates :email, presence:true
end

<!-- As a developer, I need every username to be at least 5 characters long. -->

it 'is not valid if username is less than 5 characters' do
    account1 = Account.create(username: 'test', password: 'password', email: 'email.com')
    expect(account1.errors[:username]).to_not be_empty
end

class Account < ApplicationRecord
    validates :username, presence:true
    validates :password, presence:true
    validates :email, presence:true
    validates :username, length: { minimum: 5 }
end

<!-- As a developer, I need each username to be unique. -->

it 'is not valid if username is not unique' do
    account2 = Account.create(username: 'username', password: 'password', email: 'email.com')
    account3 = Account.create(username: 'username', password: 'password', email: 'email.com')
    expect(account3.errors[:username]).to_not be_empty
end

class Account < ApplicationRecord
    validates :username, presence:true
    validates :password, presence:true
    validates :email, presence:true
    validates :username, length: { minimum: 5 }
    validates :username, uniqueness:true
end

<!-- As a developer, I need each password to be at least 6 characters long. -->

it 'is not valid if password is less than 6 characters' do
    account5 = Account.create(username: 'test', password: 'test', email: 'email.com')
    expect(account5.errors[:password]).to_not be_empty
end

class Account < ApplicationRecord
    validates :username, presence:true
    validates :password, presence:true
    validates :email, presence:true
    validates :username, length: { minimum: 5 }
    validates :username, uniqueness:true
    validates :password, length: { minimum: 6 }
end

<!-- As a developer, I need each password to be unique. -->

it 'is not valid if password is not unique' do
    account6 = Account.create(username: 'randomtest', password: 'password', email: 'email.com')
    account7 = Account.create(username: 'username', password: 'password', email: 'email.com')
    expect(account7.errors[:password]).to_not be_empty
end

class Account < ApplicationRecord
    validates :username, presence:true
    validates :password, presence:true
    validates :email, presence:true
    validates :username, length: { minimum: 5 }
    validates :username, uniqueness:true
    validates :password, length: { minimum: 6 }
    validates :password, uniqueness:true
end

<!-- As a developer, I want my Account model to have many associated Addresses. -->
<!-- As a developer, I want Address to have street_number, street_name, city, state, and zip attributes. The street_number and zip should be integers. -->

rails g model Address street_number:integer street_name:string city:string state:string zip:integer

rails db:migrate

learnacademy@LEARNs-MacBook-Air company_contacts % rails c
Running via Spring preloader in process 15446
Loading development environment (Rails 6.1.4)
3.0.0 :001 > Account.create(username: 'testuser', password: 'testpassword', emai
l: 'testemail.com')
  TRANSACTION (0.1ms)  BEGIN
  Account Exists? (27.2ms)  SELECT 1 AS one FROM "accounts" WHERE "accounts"."username" = $1 LIMIT $2  [["username", "testuser"], ["LIMIT", 1]]
  Account Exists? (1.0ms)  SELECT 1 AS one FROM "accounts" WHERE "accounts"."password" = $1 LIMIT $2  [["password", "testpassword"], ["LIMIT", 1]]
  Account Create (1.6ms)  INSERT INTO "accounts" ("username", "password", "email", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["username", "testuser"], ["password", "testpassword"], ["email", "testemail.com"], ["created_at", "2021-08-06 17:59:37.378983"], ["updated_at", "2021-08-06 17:59:37.378983"]]
  TRANSACTION (1.3ms)  COMMIT
 => #<Account id: 1, username: "testuser", password: [FILTERED], email: "testemail.com", created_at: "2021-08-06 17:59:37.378983000 +0000", updated_at: "2021-08-06 17:59:37.378983000 +0000"> 

 # rails g migration add_column_account_id

 testuser = Account.first
  Account Load (0.4ms)  SELECT "accounts".* FROM "accounts" ORDER BY "accounts"."id" ASC LIMIT $1  [["LIMIT", 1]]
 => #<Account id: 1, username: "testuser", password: [FILTERED], email: "t... 
3.0.0 :003 > testuser.addresses.create street_number: 123, street_name: 'Random 
Street', city: 'San Diego', state: 'CA', zip: 92129
  TRANSACTION (10.3ms)  BEGIN
  Address Create (4.2ms)  INSERT INTO "addresses" ("street_number", "street_name", "city", "state", "zip", "created_at", "updated_at", "account_id") VALUES ($1, $2, $3, $4, $5, $6, $7, $8) RETURNING "id"  [["street_number", 123], ["street_name", "Random Street"], ["city", "San Diego"], ["state", "CA"], ["zip", 92129], ["created_at", "2021-08-06 18:06:53.695603"], ["updated_at", "2021-08-06 18:06:53.695603"], ["account_id", 1]]
  TRANSACTION (0.7ms)  COMMIT
 => #<Address id: 1, street_number: 123, street_name: "Random Street", city: "San Diego", state: "CA", zip: 92129, created_at: "2021-08-06 18:06:53.695603000 +0000", updated_at: "2021-08-06 18:06:53.695603000 +0000", account_id: 1> 

<!-- As a developer, I want to validate the presence of all fields on Address. -->

require 'rails_helper'

RSpec.describe Address, type: :model do
  it 'is valid with valid attributes' do
    account = Account.create(username: 'username', password: 'password', email: 'email.com')
    testuser = Account.first
    address = testuser.addresses.create(street_number: 123, street_name: 'Random 
    Street', city: 'San Diego', state: 'CA', zip: 92129)
    expect(address).to be_valid
  end
  it 'is not valid without a street number' do
    account = Account.create(username: 'username', password: 'password', email: 'email.com')
    testuser = Account.first
    address = testuser.addresses.create(street_name: 'Random 
    Street', city: 'San Diego', state: 'CA', zip: 92129)
    expect(address.errors[:street_number]).to_not be_empty
  end
  it 'is not valid without a street name' do
    account = Account.create(username: 'username', password: 'password', email: 'email.com')
    testuser = Account.first
    address = testuser.addresses.create(street_number: 123, city: 'San Diego', state: 'CA', zip: 92129)
    expect(address.errors[:street_name]).to_not be_empty
  end
  it 'is not valid without a city' do
    account = Account.create(username: 'username', password: 'password', email: 'email.com')
    testuser = Account.first
    address = testuser.addresses.create(street_number: 123, street_name: 'Random 
    Street', state: 'CA', zip: 92129)
    expect(address.errors[:city]).to_not be_empty
  end
  it 'is not valid without a state' do
    account = Account.create(username: 'username', password: 'password', email: 'email.com')
    testuser = Account.first
    address = testuser.addresses.create(street_number: 123, street_name: 'Random 
    Street', city: 'San Diego', zip: 92129)
    expect(address.errors[:state]).to_not be_empty
  end
  it 'is not valid without a zip' do
    account = Account.create(username: 'username', password: 'password', email: 'email.com')
    testuser = Account.first
    address = testuser.addresses.create(street_number: 123, street_name: 'Random 
    Street', city: 'San Diego', state: 'CA')
    expect(address.errors[:zip]).to_not be_empty
  end
end

class Account < ApplicationRecord
    validates :username, presence:true
    validates :password, presence:true
    validates :email, presence:true
    validates :username, length: { minimum: 5 }
    validates :username, uniqueness:true
    validates :password, length: { minimum: 6 }
    validates :password, uniqueness:true
    has_many :addresses
end

class Address < ApplicationRecord
    belongs_to :account
    validates :street_number, presence:true
    validates :street_name, presence:true
    validates :city, presence:true
    validates :state, presence:true
    validates :zip, presence:true
end

