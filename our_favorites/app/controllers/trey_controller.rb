class TreyController < ApplicationController
    def favoriteTop3
        @top_3 = {"Motorcyles":"https://en.wikipedia.org/wiki/Motorcycle","Fishing":"https://en.wikipedia.org/wiki/Fishing","Guitar":"https://en.wikipedia.org/wiki/Guitar"}

    render 't_favorites.html.erb'
    end
end
