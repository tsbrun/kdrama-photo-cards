class CharactersController < ApplicationController
    before_action :require_login
    # before_action :get_drama
    
    def index 
        @characters = Drama.find_by(id: params[:drama_id]).characters
    end

    def new 
        @character = Character.new
    end

    def create 
        @character = Drama.find_by(id: params[:drama_id]).characters.build(character_params)
        if @character.save
            flash[:success] = "You've successfully added a character."
            redirect_to drama_characters_path(params[:drama_id])
        else
            render :new
        end
    end

    private 

    def character_params
        params.require(:character).permit(:name, :gender, :role, :img_url)
    end
end
