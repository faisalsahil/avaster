class CountriesController < ApplicationController
  before_action :set_country, only: [:show, :edit, :update, :destroy]
  
  def index
    @countries = Country.includes(:currencies)
  end
  
  def show
  end
  
  # def new
  #   @country = Country.new
  # end
  
  def edit
  end
  
  # def create
  #   @country = Country.new(country_params)
  #
  #   respond_to do |format|
  #     if @country.save
  #       format.html { redirect_to @country, notice: 'Country was successfully created.' }
  #       format.json { render :show, status: :created, location: @country }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @country.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  
  def update
    respond_to do |format|
      if @country.update(country_params)
        format.html { redirect_to @country, notice: 'Country was successfully updated.' }
        format.json { render :show, status: :ok, location: @country }
      else
        format.html { render :edit }
        format.json { render json: @country.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @country.is_active = false
    @country.save
    respond_to do |format|
      format.html { redirect_to countries_url, notice: 'Country was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_country
      @country = Country.find(params[:id])
    end
  
    def country_params
      params.require(:country).permit(:country_name, :alpha2_code, :alpha3_code, :calling_code, :is_avaster_supported, :is_active)
    end
end
