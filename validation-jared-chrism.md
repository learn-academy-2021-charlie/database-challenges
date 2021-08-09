# below is account.rb file

class Account < ApplicationRecord
    validates :username, presence: true, length: { minimum: 5 }
    validates :username, uniqueness: true
    validates :password, presence: true, length: { minimum: 6 }
    validates :password, uniqueness: true
    validates :email, presence: true
end

# below is account_spec.rb file
require 'rails_helper'

RSpec.describe Account, type: :model do
  it "is not valid without username" do
    account = Account.create password: 'chris6969', email: 'me@me.com'
    expect(account.errors[:username]).to_not be_empty 
  end
  it "is not valid without password" do
    account = Account.create username: 'chris6969', email: 'me@me.com'
    expect(account.errors[:password]).to_not be_empty 
  end
  it "is not valid without email" do
    account = Account.create username: 'chris6969', password: 'password'
    expect(account.errors[:email]).to_not be_empty 
  end
  it "is not valid without username at least 5 characters long" do
    account = Account.create username: 'chri'
    expect(account.errors[:username]).to_not be_empty 
  end
  it "is not valid without username uniqueness" do
    acct1 = Account.create(username: 'christopher', password: 'password', email: 'me@me.com')
    acct2 = Account.create(username: 'christopher', password: 'password', email: 'me@me.com')
    expect(acct2.errors[:username]).to_not be_empty 
  end
  it "is not valid without password at least 6 characters long" do
    account = Account.create password: 'chris'
    expect(account.errors[:password]).to_not be_empty 
  end
  it "is not valid without password uniqueness" do
    acct1 = Account.create(username: 'chris', password: 'password', email: 'me@me.com')
    acct2 = Account.create(username: 'chris', password: 'password', email: 'me@me.com')
    expect(acct2.errors[:password]).to_not be_empty 
  end
end
# As a developer, I want my Account model to have many associated Addresses.