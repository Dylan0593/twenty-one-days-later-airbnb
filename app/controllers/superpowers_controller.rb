class SuperpowersController < ApplicationController

  def show
    @superpower = Superpower.find(params[:id])
  end
  
  def index
    @superpowers = Superpower.all

  end
end
