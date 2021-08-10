class MainController < ApplicationController
  def cube
    @number = params[:number].to_i
    puts @number 
    puts @number.class
    @cubed_number = @number**3
  end
end
