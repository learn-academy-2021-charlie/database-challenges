Challenges

* Add five entries to the database via the Rails console (don't forget to db: migrate after generating model)

$ rails db: migrate
$ rails c
> Movie.create title: 'Friday', category: 'comedy'

* Create a migration to add a new column to the database called movie_length

$ rails g migration AddColumn

In new migration class file add inside of the def change method:
	add_column :movies, :movie_length, :string

class AddColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :movie_length, :string
  end
end

$ rails db: migrate

* Update the values of the five existing attributes to include a movie_length value

$ rails c
> friday_length = Movie.find(1)
> friday_length.update movie_length: '1 hr 28 min'

* Generate a migration to rename the column 'category' to 'genre'

In new migration class file add inside of the def change method:
	rename_column :movies, :category, :genre

class RenameColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :movies, :category, :genre
  end
end

$ rails db: migrate