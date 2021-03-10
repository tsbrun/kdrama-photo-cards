class DramasController < ApplicationController
  before_action :require_login 

  def index
    @dramas = Drama.all
  end

  def new 
    @drama = Drama.new
  end

  def create 
    @drama = Drama.new(drama_params)
    if @drama.save 
      redirect_to dramas_path
    else
      render :new
    end
  end

  private 

  def drama_params
    params.require(:drama).permit(:title, :img_url, :wiki_url)
  end
end
