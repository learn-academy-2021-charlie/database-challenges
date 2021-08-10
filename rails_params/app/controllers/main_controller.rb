class MainController < ApplicationController
    def cubed
        @cube = params[:number]
        @result = params[:number].to_i * params[:number].to_i
    end
    def evenly
        @num1 = params[:number1]
        @num2 = params[:number2]
        if params[:number1].to_i % params[:number2].to_i == 0
            @num3 = "Even"
        else 
            @num3 = "Odd"
        end
        render 'evenly.html.erb'
    end
end
