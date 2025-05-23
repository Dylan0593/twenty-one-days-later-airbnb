class ReviewsController < ApplicationController
  def create
    @superpower = Superpower.find(params[:superpower_id])
    @review = Review.new(review_params)
    @review.superpower = @superpower
    @review.user = current_user
    if @review.save
      redirect_to superpower_path(@superpower)
    else
      @bookings = Booking.where(user: current_user)
      render 'bookings/index', status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
