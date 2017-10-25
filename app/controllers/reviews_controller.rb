class ReviewsController < ApplicationController

  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def index

  end

  def new
    @review = Review.new
    @restaurant = @review.restaurants.build
  end

  def create
    @review = Review.create(review_params)

    redirect_to review_path(@review)
  end

  def show

  end

  private

  def review_params
    params.require(:review).permit(:taste_rating, :health_rating, :description, restaurant_ids:[], :restaurants_attributes => [:name, :location, :cuisine, :user_id, :review_id])
  end

  def set_review
    @review = Review.find_by(id: params[:id])
  end

end
