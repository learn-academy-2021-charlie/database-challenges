class MainController < ApplicationController
    def cubed
        @number_to_be_cubed = params[:num_cubed].to_i
    end
end
