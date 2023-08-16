class BookingsController < ApplicationController
    def new
    @booking = Booking.new
    end

    def create
    @booking = Booking.new(booking_params)
    if @booking.save
        redirect_to bookings_path, notice: 'Booking was successfully created.'
    else
        render :new
    end
    end

    private

    def booking_params
    params.require(:booking).permit(:name, :email, :other_attributes)
    end
end