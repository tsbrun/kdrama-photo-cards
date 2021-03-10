class CharactersController < ApplicationController
    before_action :require_login
    
    def index 
        @characters = Drama.find_by(id: params[:drama_id]).characters
    end
end
