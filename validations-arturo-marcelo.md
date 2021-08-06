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
require 'rails_helper'\

# inside spec/models/account_spec.rb

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
  #inside app/models/account.rb

```
class Account < ApplicationRecord
  validates :username, presence: true
  validates :password, presence: true
  validates :email, presence: true
end
```

# As a developer, I need every username to be at least 5 characters long.

indisde the spec folder
```
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
  it "it not valid with username less than 5 characters long" do
    mike = Account.create username: 'mike', password: '123password',
    email: 'mike@gmail.com'
    expect(mike.errors[:username]).to_not be_empty
  end
end
```
inside models folder
```
class Account < ApplicationRecord
    validates :username, presence: true, length: {minimum: 5}
    validates :password, presence: true
    validates :email, presence: true
end
```

# As a developer, I need each username to be unique.

```
 it "it not valid with duplicate username" do
    mike = Account.create username: 'mike smith', password: '123password',
    email: 'mike@gmail.com'
    mike1 = Account.create username: 'mike smith', password: '123password',
    email: 'mike@gmail.com'
    expect(mike1.errors[:username]).to_not be_empty
  end
```


in models folder
```
 validates :username, presence: true, length: {minimum: 5}, uniqueness: true
```

### Check the errors array to see if we are populating it upon failing tests
```
$ account = Account.new
$ account.valid?
$ account.errors[:password]
```
# As a developer, I need each password to be at least 6 characters long.

```
  validates :password, presence: true, length: {minimum: 6}
```

```
  it "it not valid with password less than 6 characters long" do
    mike = Account.create password: 'mike', username: 'mike smith',
    email: 'mike@gmail.com'
    expect(mike.errors[:password]).to_not be_empty
  end
```
# As a developer, I need each password to be unique.

```
it "it not valid with duplicate password" do
    mike = Account.create username: 'mike smith', password: '123password',
    email: 'mike@gmail.com'
    bob = Account.create username: 'bob smith', password: '123password',
    email: 'bob@gmail.com'
    expect(bob.errors[:password]).to_not be_empty
  end
```

```
validates :password, presence: true, length: {minimum: 6}, uniqueness: true
```

# As a developer, I want my Account model to have many associated Addresses.
```
class Account < ApplicationRecord
  has_many :addresses
  validates :username, presence: true, length: {minimum: 5}, uniqueness: true
  validates :password, presence: true, length: {minimum: 6}, uniqueness: true
  validates :email, presence: true
end
```
```
class Address < ApplicationRecord
  belongs_to :account
end
```
# As a developer, I want Address to have street_number, street_name, city, state, and zip attributes. The street_number and zip should be integers.
```
create_table "addresses", force: :cascade do |t|
  t.integer "street_number"
  t.string "street_name"
  t.string "city"
  t.string "state"
  t.integer "zip"
  t.integer "account_id"
  t.datetime "created_at", precision: 6, null: false
  t.datetime "updated_at", precision: 6, null: false
end
```
# As a developer, I want to validate the presence of all fields on Address.
require 'rails_helper'
```
RSpec.describe Address, type: :model do
  it "it not valid without an street name" do
    mike = Account.create username:'Mike Smith', password:'123password', email:'mike@gmail.com'
    mikes_address = Address.create street_number: 342, city: 'adkak', state: 'DE', zip: 12321, account_id: 1
    expect(mikes_address.errors[:street_name]).to_not be_empty
  end
end
```
```
class Address < ApplicationRecord
  belongs_to :account
  validates :street_name, presence: true
end
```
