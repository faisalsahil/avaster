class CurrenciesController < ApplicationController
  before_action :set_currency, only: [:show, :edit, :update, :destroy]
  
  def index
    if params[:country_id].present?
      @currencies = Currency.where(country_id: params[:country_id])
    else
      @currencies = Currency.all
    end
  end
  
  def show
  end
  
  # def new
  #   @currency = Currency.new
  # end
  
  def edit
  end
  
  # def create
  #   @currency = Currency.new(currency_params)
  #
  #   respond_to do |format|
  #     if @currency.save
  #       format.html { redirect_to @currency, notice: 'Currency was successfully created.' }
  #       format.json { render :show, status: :created, location: @currency }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @currency.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  
  def update
    respond_to do |format|
      if @currency.update(currency_params)
        format.html { redirect_to @currency, notice: 'Currency was successfully updated.' }
        format.json { render :show, status: :ok, location: @currency }
      else
        format.html { render :edit }
        format.json { render json: @currency.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @currency.destroy
    respond_to do |format|
      format.html { redirect_to currencies_url, notice: 'Currency was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_currency
      @currency = Currency.find(params[:id])
    end
  
    def currency_params
      params.require(:currency).permit(:currency_name, :iso_code, :symbol, :sorder)
    end
end
