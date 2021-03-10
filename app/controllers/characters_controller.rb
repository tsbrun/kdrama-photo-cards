class CharactersController < ApplicationController
    before_action :require_login
    # before_action :get_drama
    
    def index 
        @characters = Drama.find_by(id: params[:drama_id]).characters
    end

    def new 
        @character = Character.new
    end
end
