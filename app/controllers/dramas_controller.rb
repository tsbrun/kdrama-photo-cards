class DramasController < ApplicationController
  before_action :require_login 

  def index
    @dramas = Drama.all
  end

  def new 
    @drama = Drama.new
  end

  def create 

  end

  private 

  def drama_params
    params.require(:drama).permit(:title, :img_url, :wiki_url)
  end
end
