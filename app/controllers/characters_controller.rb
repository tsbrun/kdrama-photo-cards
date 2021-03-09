class CharactersController < ApplicationController
    before_action :require_login
    
    def index 
        @characters = Character.all
    end
end
