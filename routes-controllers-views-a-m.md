Routes, Controllers, and Views Challenges

Create a Rails application called our_favorites. The app will have a PostgreSQL database.

-> $rails new our_favorites -d postgresql -T -G

Generate a controller called Main.

-> $rails g controller Main

Generate additional controllers named for EACH member of the team, e.g. $ rails generate controller George

-> andy
    -> $rails g controller Andy
-> marcelo
    -> $rails g controller Marcelo


User Stories

As a user, I can see a landing page at localhost:3000 that has a title of the application and subtitles with each team member's name.
HINT: Use the main controller to create the landing page.

defined the title_subtitle method
```
def title_subtitle
        @team_members = ['Andy', 'Marcelo']
        @title = 'Our Favorites!tsting 123'
        render 'title_subtitle.html.erb'
    end
```

-- created two instance variable in the MainController Class file.
@team_members = ['Andy', 'Marcelo']
@title = 'Our 
```
class MainController < ApplicationController
    def title_subtitle
        @team_members = ['Andy', 'Marcelo']
        @title = 'Our Favorites!tsting 123'
        render 'title_subtitle.html.erb'
    end
end
```
Created the main route in route file!
    -> root 'main#title_subtitle'

Created our .erb file

```
<h1>  <%= @title %> </h1> 

<ul>
    <% @team_members.each do |value| %>
        <li> <%= value %> </li>
    <% end %>
</ul>
```

As a user, I can see a list of each team member's top three things. (Could be top three restaurants, activities, books, video games, hiking locations, beaches, doughnut shoppes, movies, etc.)

As a user, I can see that each of the list items are links.
As a user, I can click on a link and be take to a page where I can see more information about that particular list item.
HINT: Use the appropriate controller for each teammate. Create methods for each list item. Create view files in the corresponding view folder.
As a user, I can return to the landing page from any of the other pages.