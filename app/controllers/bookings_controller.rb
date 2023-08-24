class BookingsController < ApplicationController

  before_action :set_instrument, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.instrument = @instrument
    @booking.user = current_user

    if @booking.save!
      redirect_to @booking, notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :instrument_id, :start_date, :end_date)
  end

  def set_instrument
    @instrument = Instrument.find(params[:instrument_id])
  end

  #def num_days_booked(start_date, end_date)
   # (end_date - start_date).to_i
  #end

  #def calculate_total_payment(num_days, daily_price)
    #num_days * daily_price
  #end
end
