$ rails new rolledex_challenge -d postgresql -T
$ cd rolledex_challenge
$ rails db:create
$ rails generate model Person first_name:string last_name:string phone:string
$ rails db:migrate
$ rails C
$ Person.create first_name: 'Arturo' last_name: 'Gourentchik' phone: '302 345 6754'
x6
$ Person.all
$ Person.where last_name: 'Gourentchik'
$ lastentry = Person.last
$ lastentry.update phone: '234 756 7678'
$ thirdperson = Person.find 3
$ thirdperson.first_name
$ samename = Person.where last_name: 'Gourentchik'
$ samename.update phone: '345 346 9593'
$ Person.where("last_name != 'Gourentchik'"").destroy_all
