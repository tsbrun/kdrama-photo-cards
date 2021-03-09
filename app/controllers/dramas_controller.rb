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
end
