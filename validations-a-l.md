account.spec
```
require 'rails_helper'

RSpec.describe Account, type: :model do
  it "is valid with valid attributes" do
    account=Account.create username:'andjhdjy', password:'password', email:'email@email.com'
    expect(account).to be_valid
  end
  it "has a username with a min of 5 chars" do
    account=Account.create username:'andy', password:'password', email:'email@email.com'
    expect(account.errors[:username]).to_not be_empty
  end
  it "has a unique username" do
    account1=Account.create username:'andyss', password:'password', email:'email@email.com'
    account2=Account.create username:'andyss', password:'password', email:'email@email.com'
    expect(account2.errors[:username]).to_not be_empty
  end
end
```
address_spec.rb
```
require 'rails_helper'

RSpec.describe Address, type: :model do
  it "is valid with valid attributes" do
    account1=Account.create username:'andyss', password:'password', email:'email@email.com'
    address = Address.create street_number:232, street_name:'apple', city:'san diego', state:'CA', zip_code:''
    expect(address.errors[:account]).to_not be_empty
  end
  it "has all attributes required" do
    address = Address.create street_number:232, street_name:'apple', city:'san diego', state:'CA', zip_code:''
    expect(address.errors[:zip_code]).to_not be_empty

end
```

account.rb
```class Account < ApplicationRecord
    validates :password, :email, :username, presence:true
    validates :username, length: {minimum:5}
    validates :username, uniqueness: true
    has_many :addresses
end
```
address.rb
```
class Address < ApplicationRecord
    belongs_to :account
    validates :street_name, :street_number, :zip_code, :city, :state, presence:true
end
```
