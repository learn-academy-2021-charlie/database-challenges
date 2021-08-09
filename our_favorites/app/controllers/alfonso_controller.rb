class AlfonsoController < ApplicationController
  def movies
    @movies = ["Nacho Libre","The Mummy","10 Things I Hate About You"]
    render 'movies.html.erb'
  end
end
