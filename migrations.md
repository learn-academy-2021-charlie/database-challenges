### Setup
# Create a new Rails application called 'favorite_movies'.
rails new favorite_movies -d postgresql -T
# Create the database
rails db:create
# Generate a Movie model with a title attribute and a category attribute


### Challenges
# Add five entries to the database via the Rails console
FavoriteMovie.create :title => 'Friday', :category => 'comedy'
# Create a migration to add a new column to the database called movie_length
rails g migration add_movie_length_column_to_table
rails db:migrate
# Update the values of the five existing attributes to include a movie_length value
FavoriteMovie .update_all movie_length:'2hr 40min'
# Generate a migration to rename the column 'category' to 'genre'
rails g migration rename_category_genre_to_table