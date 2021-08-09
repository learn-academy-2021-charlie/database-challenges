class ThomasController < ApplicationController
    def movies
        @movies = {"The Departed": 'https://en.wikipedia.org/wiki/The_Departed',"Hercules": 'https://en.wikipedia.org/wiki/Hercules',"Boondock Saints": 'https://en.wikipedia.org/wiki/The_Boondock_Saints'}
        render 'thomas.html.erb'
      end

    # def the_departed
    #     render 'the_departed.html.erb'
    # end


    # def hercules
    #     render 'hercules.html.erb'
    # end

    # def boondock_saints
    #     render 'boondock_saints.html.erb'
    # end
end
