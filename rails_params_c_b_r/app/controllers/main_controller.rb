class MainController < ApplicationController
    def cubed
         @cubed = params[:number].to_i ** 3
         render 'cubed.html.erb'
    end
    def evenly
        if params[:number1].to_i % params[:number2].to_i == 0
            @result_string = "#{params[:number1]} is evenly divisible by #{params[:number2]}"
        else
            @result_string = "#{params[:number1]} is not evenly divisible by #{params[:number2]}"
        end
    end
    def length
        @length = params[:string].length
    end
    def palindrome
    end
    def madlib
    end
end
