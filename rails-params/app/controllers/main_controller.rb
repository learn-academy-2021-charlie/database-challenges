class MainController < ApplicationController
  def cube
    @number = params[:number].to_i
    puts @number
    puts @number.class
    @cubed_number = @number**3
  end

  def evenly_divisble
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    @divisble = @num1 % @num2
      if @divisble % @num1 === 0
        @divisble = true
      else
        @divisble = false
      end
  end
end
