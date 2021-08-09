class MainController < ApplicationController
    def title_subtitle
        @team_members = ['Andy', 'Marcelo']
        @title = 'Our Favorites!tsting 123'
        render 'title_subtitle.html.erb'
    end
end


# Inside the controller, we define what we want to happen when a method is reached. In this case, when the answer method is triggered, it will render some html that reads "This is the answer".