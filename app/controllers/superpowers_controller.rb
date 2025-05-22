class SuperpowersController < ApplicationController

  def index
    @superpowers = Superpower.all
  end

  def show
      @superpower = Superpower.find(params[:id])
      @booking= Booking.new
  end

  def new
    @superpower = Superpower.new
  end

  def create
    @superpower = Superpower.new(superpower_params)
    @superpower.user = current_user

    if @superpower.save
      redirect_to superpowers_path, notice: 'Superpower was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @superpower = Superpower.find(params[:id])

     if @superpower.user == current_user
       @superpower.destroy
       redirect_to superpowers_path, notice: "Superpower deleted successfully."
     else
       redirect_to superpowers_path, alert: "You can only delete your own superpowers!"
     end
  end

  private

  def superpower_params
    params.require(:superpower).permit(:name, :description, :price, :strength, :image)
  end

end
