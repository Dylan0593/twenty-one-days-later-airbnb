class BookingsController < ApplicationController


  def create
      @booking = Booking.new(booking_params)
      superpower = Superpower.find(params[:superpower_id])
      @booking.superpower = superpower
      @booking.user = current_user

    if @booking.save
      redirect_to superpower_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end

  end




private

def booking_params
  params.require(:booking).permit(:start_date, :end_date, :comment)
end
end
