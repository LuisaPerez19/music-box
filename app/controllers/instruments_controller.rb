class InstrumentsController < ApplicationController

    def index
    @instruments = Instrument.all
    end

    #show method

    def new
    @instrument = Instrument.new
    end

    def create
    @instrument = Instrument.new(instrument_params)
    if @instrument.save
        redirect_to instrument_path(@instrument)
    else
        render 'new', status: :unprocessable_entity
    end
    end


    private

    def instrument_params
    params.require(:instrument).permit(:name)
    end
end
