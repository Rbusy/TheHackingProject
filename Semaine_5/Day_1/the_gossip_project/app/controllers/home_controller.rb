class HomeController < ApplicationController
  def index
    @users = User.all
  end

  def anus
    @gentil_fdp = params[:id]
  end

  def show
  end
end
