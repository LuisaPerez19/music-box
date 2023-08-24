 class ReviewsController < ApplicationController
  before_action :set_instrument, only: [:new, :create]

    def new
      @review = Review.new
    end

    def show
      @review = Review.find(params[:id])
    end

    def create
      @review = Review.new(review_params)
      @review.instrument = @instrument
      @review.user = current_user

      if @review.save!
        redirect_to @review, notice: 'Review was successfully created.'
      else
        render :new
      end
    end

    private

    def set_instrument
      @instrument = Instrument.find(params[:instrument_id])
    end

    def review_params
      params.require(:review).permit(:content)
    end
  end
