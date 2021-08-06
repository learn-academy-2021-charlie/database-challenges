/////Validations Challenges
/////Create a Rails application called company_contacts. The app will have a PostgreSQL database.
-rails new company_contacts -d postgresql -T
-rails db:create
- bundle add rspec-rails
- rails g rspec:install




/////Generate a model called Account that has a username, a password, and an email.
-rails g model Account username:string password:string email:string



/////All stories should have accompanying model specs.
/////Developer Stories

/////As a developer, I need username, password, and email to be required.

RSpec.describe Account, type: :model do
  it 'is not valid without a username' do
  user = Account.create(password:'test123', email:'yahoo@gmail.com')
  expect(user.errors[:username]).to_not be_empty
  end
  it 'is not valid without a password' do
    user = Account.create(username:'Chong', email:'hotmail@gmail.com')
    expect(user.errors[:password]).to_not be_empty
  end
  it 'is not valid without a email' do
    user = Account.create(username:'Cheech', password:'seventyfor')
    expect(user.errors[:email]).to_not be_empty
  end
end

class Account < ApplicationRecord
validates :username, presence:true
validates :password, presence:true
validates :email, presence:true
end



/////As a developer, I need every username to be at least 5 characters long.

  it 'is not valid if username is not atleast 5 characters long' do
    user = Account.create(username:'a', password:'test123', email:'yahoo@gmail.com')
    expect(user.errors[:username]).to_not be_empty
    end

validates :username, length:{ minimum:5}




/////As a developer, I need each username to be unique.
*** need to follow validations, set name to 4 character= 'yeet' but validation was checking for 5 char min. 

  it 'is not valid if username is not unique' do
    user1 = Account.create(username:'yeetts', password:'test', email:'hoo@gmail.com')
    user2 = Account.create(username:'yeetts', password:'test', email:'hoo@gmail.com')
    expect(user2.errors[:username]).to_not be_empty
  end

validates :username, uniqueness:true


/////As a developer, I need each password to be at least 6 characters long.
/////As a developer, I need each password to be unique.

  it 'is not valid if password is not less 6 characters long' do
    password = Account.create(username:'tropilo', password:'t', email:'yahoo@gmail.com')
    expect(password.errors[:password]).to_not be_empty
  end

  it 'is not valid if password is not unique'do
    password1 = Account.create(username:'tuyieot', password:'test123', email:'hoo@gmail.com')
    password2 = Account.create(username:'orange', password:'test123', email:'hoo@gmail.com')
    expect(password2.errors[:password]).to_not be_empty
  end

  validates :password, length:{ minimum:6}
validates :password, uniqueness:true

/////As a developer, I want my Account model to have many associated Addresses.


migrate and update the model to  include an association. account_id
test- create.x2 addresses
--> expect account_id.to_not_be nil
-validation = validates_associated :account



/////As a developer, I want Address to have street_number, street_name, city, state, and zip attributes. The street_number and zip should be integers.
/////As a developer, I want to validate the presence of all fields on Address.

/////Stretch Challenges

/////As a developer, I need each Account password to have at least one number.
HINT: Read about custom validations in the Active Record validation docs.
As a developer, I want to validate that Address street_number, street_name, zip are unique for within an account.
HINT: Read about :scope in the Active Record validation docs.
As a developer, I want to validate that the Address street_number and zip are numbers.
HINT: Read about numericality in the Active Record validation docs.
As a developer, I want to see a custom error message that says "Please, input numbers only" if street_number or zip code are not numbers.
HINT: Read about message in the validation docs.