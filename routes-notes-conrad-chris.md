# set up

# Create a Rails application called our_favorites. The app will have a PostgreSQL database.
$ rails new our_favorites -d postgresql -T -G
cd our_favorites
$ rails db:create

$ rails s
navigated to localhots:3000

# Generate a controller called Main.

$ rails g controller Main

# Generate additional controllers named for EACH member of the team, e.g. $ rails generate controller George

$ rails g controller Conrad
$ rails g controller Chris

User Stories

# As a user, I can see a landing page at localhost:3000 that has a title of the application and subtitles with each team member's name.
# HINT: Use the main controller to create the landing page.

class MainController < ApplicationController
    def landing
    <!-- Added -->
        render 'landing.html.erb'
    end
end

Made landing.html.erb file in app/views/main

<!-- Added HTML to file -->
<h1>Our Favorites</h1>
<p>Conrad's Favorites</p>
<p>Chris's Favorites</p>

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  <!-- Added Route -->
  get '/landing' => 'main#landing'
end


# As a user, I can see a list of each team member's top three things. (Could be top three restaurants, activities, books, video games, hiking locations, beaches, doughnut shoppes, movies, etc.)

<!-- Added to Main Controller -->
    def the_olive_garden
        render 'the_olive_garden.html.erb'
    end
    def cheesecake_factory
        render 'cheesecake_factory.html.erb'
    end
    def buffalo_wild_wings
        render 'buffalo_wild_wings.html.erb'
    end

<!-- Added to all pages -->
<br>
<br>
<%= link_to "Landing", "/" %>

<!-- Added to routes -->
  get '/' => 'main#landing'
  get 'the_olive_garden' => 'main#the_olive_garden'
  get 'buffalo_wild_wings' => 'main#buffalo_wild_wings'
  get 'cheesecake_factory' => 'main#cheesecake_factory'


# As a user, I can see that each of the list items are links.

# As a user, I can click on a link and be take to a page where I can see more information about that particular list item.
# HINT: Use the appropriate controller for each teammate. Create methods for each list item. Create view files in the corresponding view folder.

# As a user, I can return to the landing page from any of the other pages.

<!-- Added to Main Controller -->
class MainController < ApplicationController
    def landing
        render 'landing.html.erb'
    end
    def the_olive_garden
        render 'the_olive_garden.html.erb'
    end
    def cheesecake_factory
        render 'cheesecake_factory.html.erb'
    end
    def buffalo_wild_wings
        render 'buffalo_wild_wings.html.erb'
    end
    def in_n_out
        render 'in_n_out.html.erb'
    end
    def pizza_port
        render 'pizza_port.html.erb'
    end
    def sushi_house
        render 'sushi_house.html.erb'
    end
end

<!-- Added to all pages -->
<br>
<br>
<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>
<%= link_to "Landing", "/" %>

<!-- Added to Routes -->
Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/' => 'main#landing'
  get 'the_olive_garden' => 'main#the_olive_garden'
  get 'buffalo_wild_wings' => 'main#buffalo_wild_wings'
  get 'cheesecake_factory' => 'main#cheesecake_factory'
  get 'pizza_port' => 'main#pizza_port'
  get 'sushi_house' => 'main#sushi_house'
  get 'in_n_out' => 'main#in_n_out'
end

<!-- Added to landing -->
<h1>Our Favorites</h1>
<p>Conrad's Favorite Restraunts</p>

<ul>
    <li> <%= link_to "The Olive Garden", "/the_olive_garden" %> </li>
    <li> <%= link_to "Buffalo Wild Wings", "/buffalo_wild_wings" %> </li>
    <li> <%= link_to "Cheesecake Factory", "/cheesecake_factory" %> </li>
</ul>

<p>Chris's Favorite Restraunts</p>

<ul>
    <li> <%= link_to "In-n-out", "/in_n_out" %> </li>
    <li> <%= link_to "Pizza Port", "/pizza_port" %> </li>
    <li> <%= link_to "Sushi House", "/sushi_house" %> </li>
</ul>