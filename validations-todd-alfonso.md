# Active Record Validations

**Create a Rails application called company_contacts. The app will have a PostgreSQL database.**

- $ rails new company_contacts -d postgresql -T
- $ rails db:create

Add the dependencies for RSpec:

- $ bundle add rspec-rails
- $ rails generate rspec:install

**Generate a model called Account that has a username, a password, and an email.**
_All stories should have accompanying model specs._

- $rails g model Account username:string password:string email:string
- $rails db:migrate

## Developer Stories

### to test:

rspec spec/models/contact_spec.rb

**As a developer, I need username, password, and email to be required.**

_check if email is required:_
it 'not valid without an email' do
account_without_email = Account.create({username:"Testy McTesterson",password:"password"})
expect(account_without_email.errors[:email]).to_not be_empty
end

_validate email_
validates :email, presence: true

**As a developer, I need every username to be at least 5 characters long.**

_validates length of username_
validates :username, length: {minimum: 5}

**As a developer, I need each username to be unique.**

_check if second account fails_
it 'is not valid if not unique' do
account_one = Account.create({username:"Testy McTesterson",password:"password",email:"email@email.com"})
account_two = Account.create({username:"Testy McTesterson",password:"password",email:"email@email.com"})
expect(account_two.errors[:username]).to_not be_empty
end

_validates uniqueness of username_
validates :username, uniqueness: true

**As a developer, I need each password to be at least 6 characters long.**

_we added the validation to the previous password validation. one line!_
validates :password, presence: true, length: {minimum: 6}

**As a developer, I need each password to be unique.**

**As a developer, I want my Account model to have many associated Addresses.**

**As a developer, I want Address to have street_number, street_name, city, state, and zip attributes. The street_number and zip should be integers.**

rails g model Address street_number:integer street_name:string city:string state:string zip:integer

**to create a relationship we need to:**

- Account model needs to know that it has_many addresses
  - has_many :addresses
- Address model needs to know that it belongs_to an Account
  -belongs_to :account
- Address needs an account_id
  -we add that to the table as a migration

**As a developer, I want to validate the presence of all fields on Address.**

## Stretch Challenges

As a developer, I need each Account password to have at least one number.
HINT: Read about custom validations in the Active Record validation docs.
As a developer, I want to validate that Address street_number, street_name, zip are unique for within an account.
HINT: Read about :scope in the Active Record validation docs.
As a developer, I want to validate that the Address street_number and zip are numbers.
HINT: Read about numericality in the Active Record validation docs.
As a developer, I want to see a custom error message that says "Please, input numbers only" if street_number or zip code are not numbers.
HINT: Read about message in the validation docs.
