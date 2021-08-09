class MainController < ApplicationController
    def main
        @names = {'Brian':['naruto','demon slayer','sord art online'],
             'kelen':['haikyuu!!', 'your lie in april', 'one punch man']}
        render 'main.html.erb'
    end
end
