# Migrations in Rails

### to create new application

rails new `<application name>` -d `<database name>` -T
rails new favorite_movies -d postgresql -T

cd `<application name>`
cd favorite_movies

### create database

rails db:create

### Generate a Model (and migration)

rails generate model `<ModelName>` `<attribute:data_type>`
rails generate model Movie title:string category:string

This also generates a migration to create a table in our database

### run migration (make changes to database)

rails db:migrate

### Adding to the database 

Movie.create title:"<titleOfMovie>", category:"<categoryOfMovie"
Movie.create title:"The Matrix", category:"Action"

## Creating a migration
rails generate migration "<migration>

### Create a new collumn called length 
add_column "<:tableName>", "<:collumnName>", "<:dataType>"

add_column :movies, :length, :integer

