Create a new Rails application called 'favorite_movies'.

$rails new favorite_movies -d postgresql -T
$cd favorite_movies

Create the database

$ rails db:create

Generate a Movie model with a title attribute and a category attribute

rails g model Movie title:string category:string

Challenges
Add five entries to the database via the Rails console

$Movie.create title:'Pride and Prejudice', category:'Romance'
$Movie.create title:'Avengers', category:'Action'
$Movie.create title:'Halloween', category:'Horror'
$Movie.create title:'When Harry Met Sally', category:'Romance'
$Movie.create title:'The Heart of the Sea', category:'Drama'


Create a migration to add a new column to the database called movie_length

<!-- change method -->
$rails g migration add_column_movie_length
def change
    add_column :movies, :movie_length, :float
  end
$rails db:migrate


Update the values of the five existing attributes to include a movie_length value

length=Movie.find 3
length.update movie_length: 1.5
<!-- This is the basic format adjusting the id# and movie length (in hours) as necessary -->
Generate a migration to rename the column 'category' to 'genre'

$rails g migration rename_column_category
def change
    rename_column :movies, :category, :genre
  end
$rails db:migrate
