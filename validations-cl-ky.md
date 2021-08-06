Account migration:
```
class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :username
      t.string :password
      t.string :email

      t.timestamps
    end
  end
end
```

Address migration:
```
class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.belongs_to :account
      t.bigint :street_number
      t.string :street_name
      t.string :city
      t.string :state
      t.bigint :zip

      t.timestamps
    end
  end
end
```

Account validations tests:
```
require 'rails_helper'

# RSpec.describe Account, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end
#
RSpec.describe Account, type: :model do
  it 'requires username' do
    account = Account.create(password: 'p1assword', email: 'email')
    expect(account.errors[:username]).to_not be_empty
  end

  it 'requires password' do
    account = Account.create(username:'username', email: 'email')
    expect(account.errors[:password]).to_not be_empty
  end

  it 'requires email' do
    account = Account.create(password: 'p1assword', username:'username')
    expect(account.errors[:email]).to_not be_empty
  end

  it 'requires usernames to be at least 5 chars long' do
    account = Account.create(username: 'four', password: 'passw1ord', email: 'email')
    expect(account.errors[:username]).to_not be_empty
  end

  it 'requires unique username' do
    account = Account.create(username: 'fivechar', password: '1password', email:'yes')
    acc2 = Account.create(username: 'fivechar', password: 'p1assword', email: 'yes')
    expect(acc2.errors[:username]).to_not be_empty
  end

  it 'requires password to be at least 6 chars' do
    account = Account.create(username: 'fivechar', password: '1ive', email: 'yes')
    expect(account.errors[:password]).to_not be_empty
  end

  it 'requires unique password' do
    account = Account.create(username: 'fivechar', password: 'pa1ssword', email:'yes')
    acc2 = Account.create(username: 'otheruser', password: 'pa1ssword', email: 'yes')
    expect(acc2.errors[:password]).to_not be_empty
  end

  it 'requires a number in the password' do
    account = Account.create(username: 'validuser', password: 'nonumber', email:'yes')
    expect(account.errors[:password]).to include('password must contain a number')
  end
end

```

Account model:
```
class PasswordValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /[0-9]/i
      record.errors.add attribute, (options[:message] || 'password must contain a number')
    end
  end
end

class Account < ApplicationRecord
  validates :username, presence: true, length: { minimum: 5 }, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }, uniqueness: true, password: true
  validates :email, presence: true
  has_many :addresses
end

```

Address validations tests:
```
require 'rails_helper'

RSpec.describe Address, type: :model do
  it 'validates street_number' do
    add = Address.create(street_name:'string', city:'string', state:'string', zip:2342)
    expect(add.errors[:street_number]).to_not be_empty
  end

  it 'validates street_name' do
    add = Address.create(street_number:123455, city:'string', state:'string', zip:2342)
    expect(add.errors[:street_name]).to_not be_empty
  end

  it 'validates city' do
    add = Address.create(street_name:'string', street_number:1010101, state:'string', zip:2342)
    expect(add.errors[:city]).to_not be_empty
  end

  it 'validates state' do
    add = Address.create(street_name:'string', city:'string', street_number:1010101, zip:2342)
    expect(add.errors[:state]).to_not be_empty
  end

  it 'validates zip' do
    add = Address.create(street_name:'string', city:'string', state:'string', street_number:2342)
    expect(add.errors[:zip]).to_not be_empty
  end
end
```

Address model:
```
class Address < ApplicationRecord
  belongs_to :account
  validates :street_number, presence: true
  validates :street_name, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
end
```
