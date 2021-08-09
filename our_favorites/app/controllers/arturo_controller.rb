class ArturoController < ApplicationController
    def home    
        render "home.html.erb"
    end
    def sopranos
        render "sopranos.html.erb"
    end
    def swimming
        render "swimming.html.erb"
    end    
    def warzone
    render "warzone.html.erb"
    end
end

