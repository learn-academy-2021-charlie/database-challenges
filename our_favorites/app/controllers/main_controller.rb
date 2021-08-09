class MainController < ApplicationController
    def main
        @names = {'Brian':['naruto','demon_slayer','sword_art_online'],
             'Kelen':['haikyuu', 'your_lie_in_april', 'one_punch_man']}
        render 'main.html.erb'
    end
end
