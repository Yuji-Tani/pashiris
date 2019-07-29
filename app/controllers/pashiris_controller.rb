class PashirisController < ApplicationController
  before_action :set_pashiri, only: [:show, :edit, :update, :destroy]

  # GET /pashiris
  # GET /pashiris.json
  def index
    @pashiris = Pashiri.all
  end

  # GET /pashiris/1
  # GET /pashiris/1.json
  def show
  end

  # GET /pashiris/new
  def new
    @pashiri = Pashiri.new
  end

  # GET /pashiris/1/edit
  def edit
  end

  # POST /pashiris
  # POST /pashiris.json
  def create
    @pashiri = Pashiri.new(pashiri_params)

    respond_to do |format|
      if @pashiri.save
        format.html { redirect_to @pashiri, notice: 'Pashiri was successfully created.' }
        format.json { render :show, status: :created, location: @pashiri }
      else
        format.html { render :new }
        format.json { render json: @pashiri.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pashiris/1
  # PATCH/PUT /pashiris/1.json
  def update
    respond_to do |format|
      if @pashiri.update(pashiri_params)
        format.html { redirect_to @pashiri, notice: 'Pashiri was successfully updated.' }
        format.json { render :show, status: :ok, location: @pashiri }
      else
        format.html { render :edit }
        format.json { render json: @pashiri.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pashiris/1
  # DELETE /pashiris/1.json
  def destroy
    @pashiri.destroy
    respond_to do |format|
      format.html { redirect_to pashiris_url, notice: 'Pashiri was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pashiri
      @pashiri = Pashiri.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pashiri_params
      params.require(:pashiri).permit(:name, :iraisha)
    end
end
