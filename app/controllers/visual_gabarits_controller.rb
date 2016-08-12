class VisualGabaritsController < ApplicationController
  before_action :set_visual_gabarit, only: [:show, :edit, :update, :destroy]

  # GET /visual_gabarits
  # GET /visual_gabarits.json
  def index
    @visual_gabarits = VisualGabarit.all
  end

  # GET /visual_gabarits/1
  # GET /visual_gabarits/1.json
  def show
  end

  # GET /visual_gabarits/new
  def new
    @visual_gabarit = VisualGabarit.new
  end

  # GET /visual_gabarits/1/edit
  def edit
  end

  # POST /visual_gabarits
  # POST /visual_gabarits.json
  def create
    @visual_gabarit = VisualGabarit.new(visual_gabarit_params)

    respond_to do |format|
      if @visual_gabarit.save
        format.html { redirect_to :back, notice: 'Visual gabarit was successfully created.' }
        format.json { render :show, status: :created, location: @visual_gabarit }
      else
        format.html { render :new }
        format.json { render json: @visual_gabarit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visual_gabarits/1
  # PATCH/PUT /visual_gabarits/1.json
  def update
    respond_to do |format|
      if @visual_gabarit.update(visual_gabarit_params)
        format.html { redirect_to @visual_gabarit, notice: 'Visual gabarit was successfully updated.' }
        format.json { render :show, status: :ok, location: @visual_gabarit }
      else
        format.html { render :edit }
        format.json { render json: @visual_gabarit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visual_gabarits/1
  # DELETE /visual_gabarits/1.json
  def destroy
    @visual_gabarit.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Visual gabarit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visual_gabarit
      @visual_gabarit = VisualGabarit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visual_gabarit_params
      params.require(:visual_gabarit).permit(:visual_id, :gabarit_id)
    end
end
