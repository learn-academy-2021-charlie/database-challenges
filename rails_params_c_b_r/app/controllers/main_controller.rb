class MainController < ApplicationController
    def cubed
         render 'cubed.html.erb'
         @cubed = params[:number].to_i
         @cubed = :number**3
    end

end
