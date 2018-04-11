class ReviewsController < ApplicationController
  before_action :set_review, only: [:show,:edit,:update,:destroy, :create, :new]
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def show
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = set_review
    if @review.save
      redirect_to restaurant_path(params[:restaurant_id])
    else
      render :new
    end
  end

  def update
    @review.update(review_params)
    redirect_to restaurant_path(params[:restaurant_id])
  end

  def destroy
    @review.destroy
    redirect_to restaurant_path(params[:restaurant_id])
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_review
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
