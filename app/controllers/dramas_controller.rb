class DramasController < ApplicationController
  before_action :require_login 

  def index
    @dramas = Drama.all
  end
end
