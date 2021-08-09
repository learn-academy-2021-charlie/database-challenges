## Validations Challenges
- Create a Rails application called company_contacts. The app will have a PostgreSQL database.
- Generate a model called Account that has a username, a password, and an email.
- All stories should have accompanying model specs.
### Creating a new app
```ruby
$ rails new company_contacts -d postgresql -T
# Output: webpacker successfully installed
$ cd company_contacts
# Check the created company_contacts folder
$ rails db:create
# Output
# Created database 'company_contacts_development'
# Created database 'company_contacts_test'
$ rails server
# Booting Puma
# ...
# Use Ctrl-C to stop 
# Open browser and localhost will see the ruby on rail page
```
### Adding RSpec
```ruby
$ bundle add rspec-rails
$ rails g rspec:install
# Output:
# Running via Spring preloader in process 99894
#       create  .rspec
#       create  spec
#       create  spec/spec_helper.rb
#       create  spec/rails_helper.rb
```

### Creating the model:
```ruby
$ rails generate model Account username:string password:string email:string
# Output:
# Running via Spring preloader in process 99812
#       invoke  active_record
#       create    db/migrate/20210806172314_create_accounts.rb
#       create    app/models/account.rb
$ rails db:migrate
# Check the created file：favorite_movies>app>models>account.rb
# The same time, RSpc create: spec>models>account_spec.rb
```

```ruby
# Open up Rails console.
$ rails c
```
## Developer Stories
- As a developer, I need username, password, and email to be required.
- As a developer, I need every username to be at least 5 characters long.
- As a developer, I need each username to be unique.
- As a developer, I need each password to be at least 6 characters long.
- As a developer, I need each password to be unique.
### Adding validations:
```ruby
# Validations: app/models/account.rb
class Account < ApplicationRecord
    #Syntax: :column_name :validation
    validates :username, :password, :email, presence: true
    validates :username, length: { minimum: 5 }
    validates :username, uniqueness: true
    validates :password, length: { minimum: 6}
    validates :password, uniqueness: true

end
```
### Adding model spec(TEST PART):
```ruby
# Model specs: spec/models/account_spec.rb
require 'rails_helper'

RSpec.describe Account, type: :model do 
    it 'is valid with vaild attributes.' do 
        my_account = Account.create(username:'oijejljlj', password: '1234567', email: 'colorxyan@gmail.com')
        expect(my_account).to be_valid
    end

    it 'every username is not valid if less than 5 characters'  do
        my_account = Account.create(username:'yan', password: '1234567', email: 'colorxyan@gmail.com')
        expect(my_account.errors[:username]).to_not be_empty
    end

    it 'is not valid if username is not unique' do
        my_account1 = Account.create(username:'yanxuu', password: '1234567', email: 'colorxyan@gmail.com')
        my_account2 = Account.create(username:'yanxuu', password: '90u00088', email: 'kjjrokl@gmail.com')
        expect(my_account2.errors[:username]).to_not be_empty
    end

    it 'each password is not valid if less than 6 characters'  do
        my_account = Account.create(username:'jrjnknl', password: '12345', email: 'lhlfljljga@gmail.com')
        expect(my_account.errors[:password]).to_not be_empty
    end

    it 'is not valid if password is not unique' do
        my_account1 = Account.create(username:'ojojljl', password: '1234567', email: 'noln@gmail.com')
        my_account2 = Account.create(username:'nrljfjnjkn', password: '1234567', email: 'kjjrokl@gmail.com')
        expect(my_account2.errors[:password]).to_not be_empty
    end
end
```

```ruby
# Run the spec.rb file
yanxu@Yans-MacBook-Air company_contacts % rspec spec/models/account_spec.rb
# Output:
# .....

# Finished in 0.18147 seconds (files took 1.79 seconds to load)
# 5 examples, 0 failures
```
- As a developer, I want my Account model to have many associated Addresses.
- As a developer, I want Address to have street_number, street_name, city, state, and zip attributes. 
- The street_number and zip should be integers.
- As a developer, I want to validate the presence of all fields on Address.
### Create the model
```ruby
yanxu@Yans-MacBook-Air company_contacts % rails g model Address street_number:integer street_name:string city:string state:string zip:integer account_id:integer
# Running via Spring preloader in process 1761
#       invoke  active_record
#       create    db/migrate/20210806184020_create_addresses.rb
#       create    app/models/address.rb
#       invoke    rspec
#       create      spec/models/address_spec.rb
# yanxu@Yans-MacBook-Air company_contacts % 
```
### Migrate 
```ruby
yanxu@Yans-MacBook-Air company_contacts % rails db:migrate
```

### Edit the files: app>models>account.rb and app>models>address.rb
```ruby
class Account < ApplicationRecord
...
    has_many :address
end
```

```ruby
class Address < ApplicationRecord
...
    belongs_to :account
end
```
### Migrate 
```ruby
yanxu@Yans-MacBook-Air company_contacts % rails db:migrate
```
### Adding validations:
- Validations: app/models/address.rb
```ruby
class Address < ApplicationRecord
    validates :street_number, :street_name, :city, :state, :zip, presence: true
    validates :street_number, :zip, numericality: {only_integer: true}
    belongs_to :account
end
```
### Model specs: spec/models/account_spec.rb
```ruby
require 'rails_helper'

RSpec.describe Address, type: :model do
  # As a developer, I want to validate the presence of all fields on Address.
  it 'is valid with valid attributes' do
    my_account = Account.create(username:'oijejljlj', password: '1234567', email: 'colorxyan@gmail.com')
    my_address = Address.create(street_number:87979, street_name:'ocean lane', city:'San Diego', state:'CA', zip:92027, account_id: my_account.id)
    expect(my_address).to be_valid
  end

  # The street_number and zip should be integers.
  it 'is not valid if not integers' do
    my_account = Account.create(username:'oijljliojlrrlrrrrr', password: '080885454545', email: 'ilrhk@gmail.com')
    my_address1 = Address.create(street_number:1.1, street_name:'ocean lane', city:'San Diego', state:'CA', zip:92027, account_id: my_account.id)
    my_address2 = Address.create(street_number:69869, street_name:'ocean lane', city:'San Diego', state:'CA', zip:2.2, account_id: my_account.id)
    expect(my_address1.errors[:street_number]).to_not be_empty
    expect(my_address2.errors[:zip]).to_not be_empty
  end
end
```

### Run the spec.rb
```ruby
yanxu@Yans-MacBook-Air company_contacts % rspec spec/models/address_spec.rb
# Output:
..

Finished in 0.07832 seconds (files took 1.16 seconds to load)
2 examples, 0 failures

yanxu@Yans-MacBook-Air company_contacts % 


```

## Stretch Challenges
As a developer, I need each Account password to have at least one number.
HINT: Read about custom validations in the Active Record validation docs.
As a developer, I want to validate that Address street_number, street_name, zip are unique for within an account.
HINT: Read about :scope in the Active Record validation docs.
As a developer, I want to validate that the Address street_number and zip are numbers.
HINT: Read about numericality in the Active Record validation docs.
As a developer, I want to see a custom error message that says "Please, input numbers only" if street_number or zip code are not numbers.
HINT: Read about message in the validation docs.
