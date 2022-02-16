class FlatsController < ApplicationController
  before_action :find_flat, only: %i[show edit]

  def index
    @flats = Flat.all
  end

  def show
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.create(flats_params)
    @flat.save
  end

  def edit
  end

  def update
    @flat.update(flats_params)
  end

  private

  def find_flat
    @flat = Flat.find(params[:id])
  end

  def flats_params
    params.require(:flats).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
