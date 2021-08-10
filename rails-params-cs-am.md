1. Create a Rails application called rails_params. The app will have a PostgreSQL database.
$ rails new rails_params -d postgresql -T
$ cd rails_params
$ rails db:create
$ rails server

2. Generate a controller called Main.
$ rails g controller Main

3. As a user, I can visit a page called cubed that takes a number as a param and displays that number cubed.
$ rails g controller Cubed

Controller
class CubedController < ApplicationController
    def cubed
        @cubed_number = params[:number].to_i
        @cubed_number = @cubed_number**3
        render 'cubed.html.erb'
    end
end

Cubed HTML
<h3><%= @cubed_number %></h3>

<%= link_to 'home', '/'%>

4. As a user, I can visit a page called evenly that takes two numbers and displays whether or not the first number is evenly divisible by the second.
$ rails g controller Evenly

Controller
class EvenlyController < ApplicationController
    def evenly
        @num1 = params[:num1].to_i
        @num2 = params[:num2].to_i

        if @num1 % @num2 == 0
            @num3 = "#{@num1} is divisible by #{@num2}"
        else
            @num3 = "#{@num1} is not divisible by #{@num2}"
        end

        render 'evenly.html.erb'
    end 
end

Evenly HTML
<h1> Evenly Divisble </h1>

<h3><%= @num1 %></h3>
<h3><%= @num2 %></h3>
<h3><%= @num3 %></h3>

<%= link_to 'home', '/'%>

4. As a user, I can visit a page called length that takes in a string and displays how many characters are in the string.
$ rails g controller Length

Controller
class LengthController < ApplicationController
    def length
        @string = params[:str].length

        render 'length.html.erb'
    end
end

Length HTML
<h1>The length of your String is: <%= @string %> </h1>


<%= link_to 'home', '/'%>
