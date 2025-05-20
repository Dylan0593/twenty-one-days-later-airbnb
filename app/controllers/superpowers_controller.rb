class SuperpowersController < ApplicationController

  def show
    @superpower = Superpower.find(params[:id])
  end
end
