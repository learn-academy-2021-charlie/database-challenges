class AlfonsoController < ApplicationController
  def movies
    @movies = {"Nacho Libre": '/nacho_libre',"The Mummy":'/the_mummy',"Ten Things I Hate About You":'/ten_things_i_hate_about_you'}
    render 'movies.html.erb'
  end

  def nacho_libre
   render 'nacho_libre.html.erb'
  end


  def the_mummy
    render 'the_mummy.html.erb'
  end


  def ten_things_i_hate_about_you
    render 'ten_things_i_hate_about_you.html.erb'
  end
end
