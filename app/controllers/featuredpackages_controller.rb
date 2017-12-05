class FeaturedpackagesController < ApplicationController
  before_action :set_featuredpackage, only: [:show, :edit, :update, :destroy]

  # GET /featuredpackages
  # GET /featuredpackages.json
  def index
    @featuredpackages = Featuredpackage.all
  end

  # GET /featuredpackages/1
  # GET /featuredpackages/1.json
  def show
  end

  # GET /featuredpackages/new
  def new
    @featuredpackage = Featuredpackage.new
  end

  # GET /featuredpackages/1/edit
  def edit
  end

  # POST /featuredpackages
  # POST /featuredpackages.json
  def create
    @featuredpackage = Featuredpackage.new(featuredpackage_params)

    respond_to do |format|
      if @featuredpackage.save
        format.html { redirect_to @featuredpackage, notice: 'Featuredpackage was successfully created.' }
        format.json { render :show, status: :created, location: @featuredpackage }
      else
        format.html { render :new }
        format.json { render json: @featuredpackage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /featuredpackages/1
  # PATCH/PUT /featuredpackages/1.json
  def update
    respond_to do |format|
      if @featuredpackage.update(featuredpackage_params)
        format.html { redirect_to @featuredpackage, notice: 'Featuredpackage was successfully updated.' }
        format.json { render :show, status: :ok, location: @featuredpackage }
      else
        format.html { render :edit }
        format.json { render json: @featuredpackage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /featuredpackages/1
  # DELETE /featuredpackages/1.json
  def destroy
    @featuredpackage.destroy
    respond_to do |format|
      format.html { redirect_to featuredpackages_url, notice: 'Featuredpackage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_featuredpackage
      @featuredpackage = Featuredpackage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def featuredpackage_params
      params.require(:featuredpackage).permit(:days, :coins_required, :is_active)
    end
end
