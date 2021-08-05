 rails db migrate

rails generate model Movie title:string category:string

Movie.create title:"Tommorow War", category
:"sci-fi"

Movie.create title:"Batlleships", category:
"sci-fi"

Movie.create title:"Saw", category:"Body-Ho
rror"

Movie.create title:"Happy Gilmore", categor
y:"Comedy"

Movie.create title:"Forest Gump", category:
"Drama-Comedy"

rails generate migration add_colums_to_list
here we added the movie_length

rails db:migrate

movie_l Movie.where title: "Forest Gump" 

DO this for movies 1 through 5 to update length
movie_l.update movie_length:"INSERT TIME HERE"

generate migration command to edit column name
rails generate migration rename_columns