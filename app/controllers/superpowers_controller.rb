class SuperpowersController < ApplicationController

  def index
    @superpower = Superpower.all
  end

  def show
      @superpower = Superpower.find(params[:id])
      @booking= Booking.new
  end

end
