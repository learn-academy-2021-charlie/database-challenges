class HeatherController < ApplicationController
    def favoriteTop3
        @top_3 = {"tacos":"https://damndelicious.net/2019/04/18/mexican-street-tacos/","dessert":"https://gooddinnermom.com/tiramisu-with-homemade-ladyfingers/","spaghetti":"https://www.thekitchn.com/how-to-make-fresh-pasta-from-scratch-cooking-lessons-from-the-kitchn-73435"}
        render 'h_favorites.html.erb'
    end

end
