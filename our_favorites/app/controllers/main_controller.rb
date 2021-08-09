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
