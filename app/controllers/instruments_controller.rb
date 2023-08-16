class InstrumentsController < ApplicationController
<<<<<<< HEAD
end
=======
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
>>>>>>> 7cfe4fc3f613149171027bdd85f9895ba488a3da
