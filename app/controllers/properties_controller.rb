class PropertiesController < ApplicationController
  before_action :property_find_id, only: %i[show edit update destroy]

  def index
    @properties = Property.all
  end

  def show
    @near_stations = @property.near_stations
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to root_url, notice: 'register property'
    else
      render :new
    end
  end

  def edit
    @property.near_stations.build
  end

  def update
    if @property.update(property_params)
      redirect_to root_url, notice: 'edit property'
    else
      render :edit
    end
  end

  def destroy
    @property.destroy
    redirect_to root_url, notice: 'delete property'
  end

  private

  def property_params
    params.require(:property).permit(:name, :rent, :address, :age, :remarks,
      near_stations_attributes: %i[station line how_long_time])
  end

  def property_find_id
    @property = Property.find(params[:id])
  end
end
