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

## Now we need the rails console to interact with our database!
    ->>  $ rails c

## Lets add some movies to our database!
    #Add five entries to the database via the Rails console
    ## But first let see what is in our database!
        --> $ Movie.all
    #create 5 movie entries:
        ->> $ Movie.create(title: 'Rambo II', catefories: 'Action')

    #Create a migration to add a new column to the database called movie_length
        ->> $ rails g migration add_column_to_table_movie_length
        
        !! - Now we go back to our migration file that we just created and apply the changes to the def change method
            - add_column :movies, :movie_length, :float
        ## and than we run our migrate command again!! to update our schema!!!
        ->> $ rails db:migrate  
        -- now our addition is part of the schema!!!
    #Update the values of the five existing attributes to include a movie_length value
        bring up the rails console:
        ->> $ rails c
        ## to update info (we can ask if there is a way to update all of the records with one command). But the way we know now is by assigning a record to a variable (myvariable) and calling update method on that variable
        --> myvarible.update movie_length: 2.45 (needs to be a float) 
    #Generate a migration to rename the column 'category' to 'genre' 
        --> $rails g migrate rename_column_categories
        ## we need to than go inside of the migrate file and pass in to the columns name the edited attribute
        ## now we can run 
        --> rails db:migrate
    

## 
