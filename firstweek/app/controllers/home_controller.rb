class HomeController < ApplicationController
    def index
    end
    
    def attack
        @from = params[:UserA]
        @to = params[:UserB]
    end
    
    def defense
        @from = params[:UserA]
        @to = params[:UserB]
    end
    
    
end
