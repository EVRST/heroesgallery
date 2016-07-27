class VisualsController < ApplicationController
  before_action :set_visual, only: [:show, :edit, :update, :destroy]

  # GET /visuals
  # GET /visuals.json
  def index
    @visuals = Visual.all
  end

  # GET /visuals/1
  # GET /visuals/1.json
  def show
  end

  # GET /visuals/new
  def new
    @visual = Visual.new
  end

  # GET /visuals/1/edit
  def edit
  end

  # POST /visuals
  # POST /visuals.json
  def create
    @visual = Visual.new(visual_params)

    respond_to do |format|
      if @visual.save
        format.html { redirect_to @visual, notice: 'Visual was successfully created.' }
        format.json { render :show, status: :created, location: @visual }
      else
        format.html { render :new }
        format.json { render json: @visual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visuals/1
  # PATCH/PUT /visuals/1.json
  def update
    respond_to do |format|
      if @visual.update(visual_params)
        format.html { redirect_to @visual, notice: 'Visual was successfully updated.' }
        format.json { render :show, status: :ok, location: @visual }
      else
        format.html { render :edit }
        format.json { render json: @visual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visuals/1
  # DELETE /visuals/1.json
  def destroy
    @visual.destroy
    respond_to do |format|
      format.html { redirect_to visuals_url, notice: 'Visual was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def your_visuals
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visual
      @visual = Visual.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visual_params
      params.require(:visual).permit(:name, :price, :artist_id, :is_drawing, :is_picture)
    end
end