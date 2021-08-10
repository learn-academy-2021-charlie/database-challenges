class MarceloController < ApplicationController
    def marcelos_favorite
        @m_title = "Marcelo's top 3 favorite things are"
        @mfavorites = ['The Beach','Bento','Coffee']
        render 'marcelos_favorites.html.erb'
    end
end
