Made a branch
$ rails new favorite_movies -d postgresql -T
$ cd favorite_movies
$ rails db:create
$ rails g model Movies title:string category:string
$ rails db:migrate

Add five entries to the database via the Rails console

3.0.0 :004 > Movie.create(title: 'Star Wars', category: 'Sci-Fi')
  TRANSACTION (22.4ms)  BEGIN
  Movie Create (7.2ms)  INSERT INTO "movies" ("title", "category", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["title", "Star Wars"], ["category", "Sci-Fi"], ["created_at", "2021-08-05 17:22:36.827637"], ["updated_at", "2021-08-05 17:22:36.827637"]]
  TRANSACTION (4.8ms)  COMMIT
 => #<Movie id: 1, title: "Star Wars", category: "Sci-Fi", created_at: "2021-08-05 17:22:36.827637000 +0000", updated_at: "2021-08-05 17:22:36.827637000 +0000"> 
3.0.0 :005 > Movie.create title: 'Hunger Games', category: 'Action Adventure'
  TRANSACTION (17.4ms)  BEGIN
  Movie Create (0.5ms)  INSERT INTO "movies" ("title", "category", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["title", "Hunger Games"], ["category", "Action Adventure"], ["created_at", "2021-08-05 17:24:11.342834"], ["updated_at", "2021-08-05 17:24:11.342834"]]
  TRANSACTION (4.0ms)  COMMIT
 => #<Movie id: 2, title: "Hunger Games", category: "Action Adventure", created_at: "2021-08-05 17:24:11.342834000 +0000", updated_at: "2021-08-05 17:24:11.342834000 +0000"> 
3.0.0 :006 > Movie.create title: 'Twelve Years a Slave', category: 'History'
  TRANSACTION (3.1ms)  BEGIN
  Movie Create (6.4ms)  INSERT INTO "movies" ("title", "category", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["title", "Twelve Years a Slave"], ["category", "History"], ["created_at", "2021-08-05 17:24:54.466712"], ["updated_at", "2021-08-05 17:24:54.466712"]]
  TRANSACTION (0.6ms)  COMMIT
 => #<Movie id: 3, title: "Twelve Years a Slave", category: "History", created_at: "2021-08-05 17:24:54.466712000 +0000", updated_at: "2021-08-05 17:24:54.466712000 +0000"> 
3.0.0 :007 > Movie.create title: 'Get Out', category: 'Horror'
  TRANSACTION (25.7ms)  BEGIN
  Movie Create (0.3ms)  INSERT INTO "movies" ("title", "category", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["title", "Get Out"], ["category", "Horror"], ["created_at", "2021-08-05 17:25:19.180386"], ["updated_at", "2021-08-05 17:25:19.180386"]]
  TRANSACTION (0.7ms)  COMMIT
 => #<Movie id: 4, title: "Get Out", category: "Horror", created_at: "2021-08-05 17:25:19.180386000 +0000", updated_at: "2021-08-05 17:25:19.180386000 +0000"> 
3.0.0 :008 > Movie.create title: 'Madea', category: 'Comedy'
  TRANSACTION (0.4ms)  BEGIN
  Movie Create (25.8ms)  INSERT INTO "movies" ("title", "category", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["title", "Madea"], ["category", "Comedy"], ["created_at", "2021-08-05 17:25:51.726521"], ["updated_at", "2021-08-05 17:25:51.726521"]]
  TRANSACTION (4.4ms)  COMMIT
 => #<Movie id: 5, title: "Madea", category: "Comedy", created_at: "2021-08-05 17:25:51.726521000 +0000", updated_at: "2021-08-05 17:25:51.726521000 +0000"> 

Create a migration to add a new column to the database called movie_length

learnacademy@LEARNs-Air favorite_movies % rails g migration add_column_movie_length

add_column :movies, :movie_length, :float

# add_column :table_name, :column_name, :datatype

Update the values of the five existing attributes to include a movie_length value

3.0.0 :004 > length2 = Movie.find 2
  Movie Load (1.5ms)  SELECT "movies".* FROM "movies" WHERE "movies"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]
 => #<Movie id: 2, title: "Hunger Games", category: "Action Adventure", cr... 
3.0.0 :005 > length2.update movie_length: 2.05
  TRANSACTION (1.4ms)  BEGIN
  Movie Update (6.1ms)  UPDATE "movies" SET "updated_at" = $1, "movie_length" = $2 WHERE "movies"."id" = $3  [["updated_at", "2021-08-05 17:43:05.313117"], ["movie_length", 2.05], ["id", 2]]
  TRANSACTION (2.2ms)  COMMIT
 => true 
3.0.0 :006 > length3 = Movie.find 3
  Movie Load (1.0ms)  SELECT "movies".* FROM "movies" WHERE "movies"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]
 => #<Movie id: 3, title: "Twelve Years a Slave", category: "History", cre... 
3.0.0 :007 > length3.update movie_length: 2.30
  TRANSACTION (11.5ms)  BEGIN
  Movie Update (5.1ms)  UPDATE "movies" SET "updated_at" = $1, "movie_length" = $2 WHERE "movies"."id" = $3  [["updated_at", "2021-08-05 17:44:01.450049"], ["movie_length", 2.3], ["id", 3]]
  TRANSACTION (0.6ms)  COMMIT
 => true 
3.0.0 :008 > length4 = Movie.find 4
  Movie Load (9.4ms)  SELECT "movies".* FROM "movies" WHERE "movies"."id" = $1 LIMIT $2  [["id", 4], ["LIMIT", 1]]
 => #<Movie id: 4, title: "Get Out", category: "Horror", created_at: "2021... 
3.0.0 :009 > length4.update movie_length: 1.50
  TRANSACTION (0.2ms)  BEGIN
  Movie Update (0.4ms)  UPDATE "movies" SET "updated_at" = $1, "movie_length" = $2 WHERE "movies"."id" = $3  [["updated_at", "2021-08-05 17:44:34.875079"], ["movie_length", 1.5], ["id", 4]]
  TRANSACTION (0.9ms)  COMMIT
 => true 
3.0.0 :010 > length5 = Movie.find 5
  Movie Load (0.5ms)  SELECT "movies".* FROM "movies" WHERE "movies"."id" = $1 LIMIT $2  [["id", 5], ["LIMIT", 1]]
 => #<Movie id: 5, title: "Madea", category: "Comedy", created_at: "2021-0... 
3.0.0 :011 > length5.update movie_length: 1.45
  TRANSACTION (0.9ms)  BEGIN
  Movie Update (25.9ms)  UPDATE "movies" SET "updated_at" = $1, "movie_length" = $2 WHERE "movies"."id" = $3  [["updated_at", "2021-08-05 17:45:03.580157"], ["movie_length", 1.45], ["id", 5]]
  TRANSACTION (1.0ms)  COMMIT
 => true 


Generate a migration to rename the column 'category' to 'genre'
learnacademy@LEARNs-Air favorite_movies % rails g migration rename_column_category

rename_column :movies, :category, :genre

# rename_column :table_name, :old_column, :new_column