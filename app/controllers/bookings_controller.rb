class BookingsController < ApplicationController


  def create
      @booking = Booking.new(booking_params)
      superpower = Superpower.find(params[:superpower_id])
      @booking.superpower = superpower
      @booking.user = current_user

    if @booking.save!
      redirect_to bookings_path, notice: "you have successfully booked a superpower"
    else
      render "superpowers/show", status: :unprocessable_entity
    end

  end










  def index
    @bookings = Booking.where(user: current_user)
    @review = Review.new
  end


   def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
   end


private

def booking_params
  params.require(:booking).permit(:start_date, :end_date, :comment)
end
end
