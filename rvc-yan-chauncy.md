1. Generate the new rails application
$ rails new our_favorites -d postgresql -T -G
$ cd our_favorites
$ rails db:create
$ rails server (to test to make sure its properly working)

2. Generate a controller called Main.
$ rails generate controller Main

3. Generate additional controllers named for EACH member of the team, e.g. $ rails generate controller George
$ rails generate controller Chauncy
$ rails generate controller Yan

4. For the rest of tasks were on Rails
- Our routes.rb
  get '/' => 'main#home'
  get 'yan' => 'yan#yan'
  get 'chauncy' => 'chauncy#chauncy'
  get 'hiking' => 'chauncy#hiking'
  get 'movies' => 'chauncy#movies'
  get 'gaming' => 'chauncy#gaming'
 
 - main controller
 class MainController < ApplicationController
    def home
        render 'home.html.erb'
    end
end

- chauncy controller
class ChauncyController < ApplicationController
    def chauncy
        @chauncys_list = ['Hiking', 'Movies', 'Gaming']
    end
    def hiking
        render 'hiking.html.erb'
    end
    def movies
        render 'movies.html.erb'
    end
    def gaming
        render 'gaming.html.erb'
    end
end

- home.html.erb
```html
<h1>Our Favorites</h1>

<%= link_to "Chauncy's Favorites", "/chauncy" %>
<br></br>`
<%= link_to "Yan's Favorites", "/yan" %>
```

- chauncy's html
```html
<h1> Chauncy's Favorites </h1>

<ol>
    <li> <%= link_to @chauncys_list[0], "/hiking" %> </li>
    <li> <%= link_to @chauncys_list[1], "/movies" %> </li>
    <li> <%= link_to @chauncys_list[2], "/gaming" %> </li>
</ol>

<%= link_to "Home", "/" %>
```

- hiking example html
```html
<h1>My Favorites Spots to Hike!</h1>
<ul>
    <li>San Jancito</li>
</ul>

<%= link_to "Home", "/" %>
```






