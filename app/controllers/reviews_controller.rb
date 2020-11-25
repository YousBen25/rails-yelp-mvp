class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.create!(review_params)
  end

private

  def review_params
    @review = Review.find(params[:id])
  end
end
