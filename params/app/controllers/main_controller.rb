class MainController < ApplicationController
  def home
    render 'home.html.erb'
  end
  def cubed
    @cubed = params[:number].to_i
    render 'cubed.html.erb'
  end
  def evenly
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @number2 == 0
      @result_str = "ERROR."
    elsif @number1 % @number2 == 0
      @result_str = "number one was evenly divided by the second number"
    else
      @result_str = "number one was not evenly divided by second number"
    render 'evenly.html.erb'
  end
  end
  def length
    @length = params[:string]
    @length = @length.count "a-z"
    render 'length.html.erb'
  end
  # def palindrome
  #   render 'palindrome.html.erb'
  # end
  # def madlib
  #   render 'madlib.html.erb'
  # end
end
