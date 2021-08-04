* Add five family members into the Person table in the Rails console.
    Person.create first_name: "Chauncy", last_name:'Sapien', phone: '6598752145'

* Retrieve all the items in the database.   
    Person.all

* Add yourself to the Person table.
    > Person.create first_name: "Chauncy", last_name:'Sapien', phone: '6598752145'

* Retrieve all the entries that have the same last_name as you.
    Person.where last_name: "Sapien"

* Update the phone number of the last entry in the database.
    last_entry = Person.last
    last_entry.update phone: '1234567890'

* Retrieve the first_name of the third Person in the database.
    Person.select(:first_name).find 3

* Update all the family members with the same last_name as you, to have the same phone number as you.
    update_phone = Person.where last_name: 'Sapien'
    update_phone.update phone: '0000000000'

* Remove all family members that do not have your last_name.
   remove_members = Person.where.not last_name: 'Sapien'
   remove_members.destroy_all
