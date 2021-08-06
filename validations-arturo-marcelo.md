```
$ rails new company_contacts -d postgresql -T
$ cd company_contacts
$ rails db:create
$ bundle add rspec-rails
$ rails generate rspec:install
$ rails g model Account username:string password:string email:string
$ rails db:migrate
```
```
require 'rails_helper'

RSpec.describe Account, type: :model do
  it "it not valid without an username" do
    mike = Account.create password: '123password', email: 'mikeh@gmail.com'
    expect(mike.errors[:username]).to_not be_empty
  end
  it "it not valid without a password" do
    mike = Account.create username: 'mike smith', email: 'mikeh@gmail.com'
    expect(mike.errors[:password]).to_not be_empty
  end
  it "it not valid without an email" do
    mike = Account.create username: 'mike smith', password: '123password'
    expect(mike.errors[:email]).to_not be_empty
  end
end
```
```
class Account < ApplicationRecord
  validates :username, presence: true
  validates :password, presence: true
  validates :email, presence: true
end
```
