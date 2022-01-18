class PropertiesController < ApplicationController
  before_action :property_find_id, only: %i[show edit update destroy]

  def index
    @properties = Property.all
  end

  def show
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to root_url
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @property.update(property_params)
      redirect_to root_url
    else
      render :edit
    end
  end

  def destroy
    @property.destroy
    redirect_to root_url
  end

  private

  def property_params
    params.require(:property).permit(:name, :rent, :address, :age, :remarks)
  end

  def property_find_id
    @property = Property.find(params[:id])
  end
end
