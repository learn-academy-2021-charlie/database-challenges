# Challenge: Rolodex
# As a developer, I have been tasked with creating a database model that will be used in a rolodex application. I want to ensure that the database behaves as expected and the necessary actions can be performed on the database instances.

# Created app using 
    # rails new our_first_app -d postgresql -T
        # -d postgresql  --> to unistall default database and use postgresql instead
        # -T --> unistall the Ruby testing framework

# Set Up

# Create a new Rails app named 'rolodex_challenge'.
# Create the database. The output in the terminal should look like this:
    # $ rails db:create

# Created database 'rolodex_development'
# Created database 'rolodex_test'
# Generate a model called Person with a first_name, last_name, and phone. All fields should be strings.
    # $ rails generate model Person
# Run a migration to set up the database.
    # $ rails db:migrate
# Open up Rails console.
    # $ rails c

# Actions

# Add five family members into the Person table in the Rails console.
    # Person.create(first_name:'Bob', last_name:'Smith', phone:'00987765')
# Retrieve all the items in the database.
    # Person.all
# Add yourself to the Person table.
    # Person.create(first_name:'Joao', last_name:'Azevedo', phone:'12987765')
# Retrieve all the entries that have the same last_name as you.
    # Person.where(last_name: 'Azevedo')
# Update the phone number of the last entry in the database.
    # $ last_entry = Person.last
    # last.entry.update (phone: '45454545')   -- save automagically to your database!
    # -------
    # One way
    # last_entry.phone = '45454545'
    # last_entry.save

# Retrieve the first_name of the third Person in the database.
    #third_person = Person.find(3)
        # OR
    #third_person = Person.third
    #third_person.first_name

# Stretch Challenges

# Update all the family members with the same last_name as you, to have the same phone number as you.
# family_membrs = Person.where("last_name = 'Azevedo'")
#                 Person.where(last_name: 'Azevedo')

    # family_membrs.update_all(phone: family_membrs.first.phone)
            #  OR
    # family_membrs.update_all(phone: family_membrs[0].phone)

# Remove all family members that do not have your last_name.

    # not_family = Person.where("last_name != 'Azevedo'")
    # not_family.destroy_all


    #### we can create populate our database in our seeds.rb file (inside the db folder)
        ## we create our records 
        ## rails db:seed    ---> Now my friend, we can manipulate that!!! without having to feed our records manually through the terminal!!! 