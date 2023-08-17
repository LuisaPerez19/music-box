class InstrumentsController < ApplicationController

    def index
    @instruments = Instrument.all
    end

    def new
        @instrument = Instrument.new
        end

    def show
        @instrument = Instrument.find(params[:id])
    end

    def edit
        @instrument = Instrument.find(params[:id])
    end

    def update
        @instrument = Instrument.find(params[:id])
        if @instrument.update(instrument_params)
            redirect_to instrument_path(@instrument)
        else 
        render edit
        end
    end


    def destroy
        @instrument = Instrument.find(params[:id])
        @instrument.destroy
        redirect_to instruments_path, status: :see_other
    end


    def create
    @instrument = Instrument.new(instrument_params)
    @instrument.user = current_user
    if @instrument.save
        redirect_to instrument_path(@instrument)
    else
        render 'new', status: :unprocessable_entity
    end
    end

    private

    def instrument_params
    params.require(:instrument).permit(:name,:price,:description,:photo_url,:category)
    end
end

