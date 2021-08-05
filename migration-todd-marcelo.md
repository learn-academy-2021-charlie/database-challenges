1) created app 
$ rails new favorite_movie -d postgresql -T
2) change directroy into the app folder
$ cd favorite_movie
3) we Created our database/empty room for the filing cabinets.
$ rails db:create
4) Telling rails what we want to name the filing cabinets/columns in our tables.
$ rails g or generate model Movie title:string 
5) now we can migrate the model
$ rails db:migrate
6) we need to Columns to our filing cabinets. as you can see we are add the column of category to the table
$ rails g migration add_column_category_to_table
7) inside the new migration You just created on step 6). You will define 
$ add_column :movies, :categories, :string
8) now that you have saved step 7) you can repeate step 5) and migrate it.