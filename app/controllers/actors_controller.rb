class ActorsController < ApplicationController
    before_action :require_login
    
    def index 
        @actors = Actor.all
    end
end
