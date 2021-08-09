$ rails db:create
$  rails server
$ cd desktop
$ cd database-challenges
$ ls
$ git checkout -b migrations-k-y
$ rails new favorite_movies -d postgresql -T
$ cd favorite_movies
$ rails db:create
$ rails g model movie title:string category:string
$ touch database_history_k_y.md
$ code .
$ rails db:migrate
$ rails c
$ rails g migration add_column_movie_length_to_movie
 add_column :movies, :movie_length, :float
$ rails db:migrate
$ rails c
$ rails g migration change_column_name_category_to_genre
    rename_column :movies, :category, :genre
$ rails db:migrate

