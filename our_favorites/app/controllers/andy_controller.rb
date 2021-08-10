class AndyController < ApplicationController
    def andys_favorite
        @a_title = "Andy's top 3 favorite things are"
        @mfavorites = ['The Beach','My Dogs','Coffee']
        render 'andys_favorites.html.erb'
    end
end
