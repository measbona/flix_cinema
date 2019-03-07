class ReviewsController < ApplicationController
  def index
      @cinema = Cinema.find(params[:cinema_id])
      @reviews = @cinema.reviews
  end

  def show
      @cinema = Cinema.find(params[:cinema_id])
      @reviews = @cinema.reviews
  end

  def new
      @cinema = Cinema.find(params[:cinema_id])
      @review = @cinema.reviews.new
  end

  def create
      @cinema = Cinema.find(params[:cinema_id])
      @review = @cinema.reviews.new(review_params)
      if @review.save
          redirect_to cinema_reviews_path(@cinema), notice: "Thanks for your review!"
      else 
        render :new
      end
  end
private

  def review_params
      params.require(:review).permit(:name, :comment, :stars)
  end

  def set_movie
      @cinema = Cinema.find(params[:cinema])
  end
end

