class GabaritsController < ApplicationController
  before_action :set_gabarit, only: [:show, :edit, :update, :destroy]

  # GET /gabarits
  # GET /gabarits.json
  def index
    @gabarits = Gabarit.all
  end

  # GET /gabarits/1
  # GET /gabarits/1.json
  def show
  end

  # GET /gabarits/new
  def new
    @gabarit = Gabarit.new
  end

  # GET /gabarits/1/edit
  def edit
  end

  # POST /gabarits
  # POST /gabarits.json
  def create
    @gabarit = Gabarit.new(gabarit_params)

    respond_to do |format|
      if @gabarit.save
        format.html { redirect_to @gabarit, notice: 'Gabarit was successfully created.' }
        format.json { render :show, status: :created, location: @gabarit }
      else
        format.html { render :new }
        format.json { render json: @gabarit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gabarits/1
  # PATCH/PUT /gabarits/1.json
  def update
    respond_to do |format|
      if @gabarit.update(gabarit_params)
        format.html { redirect_to @gabarit, notice: 'Gabarit was successfully updated.' }
        format.json { render :show, status: :ok, location: @gabarit }
      else
        format.html { render :edit }
        format.json { render json: @gabarit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gabarits/1
  # DELETE /gabarits/1.json
  def destroy
    @gabarit.destroy
    respond_to do |format|
      format.html { redirect_to gabarits_url, notice: 'Gabarit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gabarit
      @gabarit = Gabarit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gabarit_params
      params.require(:gabarit).permit(:name)
    end
end
