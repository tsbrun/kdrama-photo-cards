class ActorsController < ApplicationController
    before_action :require_login
    
    def index 
        @actors = Actor.all
    end

    def new 
        @actor = Actor.new
    end

    def create 
        @actor = Actor.new(actor_params)
        if @actor.save 
            flash[:success] = "You've successfully added a new actor."
            redirect_to actors_path
        else
            render :new
        end
    end
end
