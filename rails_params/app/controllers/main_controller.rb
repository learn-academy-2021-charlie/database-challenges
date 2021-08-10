class MainController < ApplicationController

    def home
        render 'main.html.erb'
    end

    #     As a user, I can visit a page called cubed that takes a number as a param and displays that number cubed.
    def cubed
        @number = params[:number].to_i ** 3
        render 'cubed.html.erb'
    end

    # As a user, I can visit a page called evenly that takes two numbers and displays whether or not the first number is evenly divisible by the second.
    def evenly
        num1 = params[:number1].to_i
        num2 = params[:number2].to_i

        if num1 % num2 == 0
            @result = "#{num1} is evenly divisible by #{num2}"
        else
            @result = "#{num1} is not evenly divisible by #{num2}"
        end
    end

    # As a user, I can visit a page called length that takes in a string and displays how many characters are in the string.
    def length
        @string = params[:string]
        @length = @string.length
    end

    # As a user, I can visit a page called palindrome that takes a string and displays whether it is a palindrome (the same word read forward and backward).
    def palindrome
        str = params[:string].downcase

        if str.reverse == str
            @result = "#{params[:string]} is a palindrome"
        else
            @result = "#{params[:string]} is not a palindrome"
        end
    end

    # As a user, I can visit a page called madlib that takes params of a noun, verb, adjective, adverb, and displays a short silly story.
    def madlibs
        @noun = params[:noun]
        @verb = params[:verb]
        @adj = params[:adj]
        @adv = params[:adv]
    end

end
