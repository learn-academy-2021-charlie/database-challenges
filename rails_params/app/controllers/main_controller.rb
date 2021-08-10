class MainController < ApplicationController
  def cubed
    @cubed = params[:number].to_i ** 3
    render 'cubed.html.erb'
  end

  def evenly
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @num1 % @num2 == 0
      @evenly = "#{@num1} is evenly divisible by #{@num2}"
    elsif @num1 % @num2 != 0
      @evenly = "#{@num1} is not evenly divisible by #{@num2}"
    end
    render 'evenly.html.erb'
  end

  def home
    render 'home.html.erb'
  end

  def palindrome
    @palindrome = params[:string].reverse == params[:string]
    render 'palindrome.html.erb'
  end

  def madlib
    @madlib = "My #{params[:adjective]} #{params[:noun]} #{params[:adverb]} #{params[:verb]}"
    render 'madlib.html.erb'
  end

  def length
    @length = params[:string].length
    render 'length.html.erb'
  end
end
