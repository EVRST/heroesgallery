class VisualFormatsController < ApplicationController
  before_action :set_visual_format, only: [:show, :edit, :update, :destroy]

  # GET /visual_formats
  # GET /visual_formats.json
  def index
    @visual_formats = VisualFormat.all
  end

  # GET /visual_formats/1
  # GET /visual_formats/1.json
  def show
  end

  # GET /visual_formats/new
  def new
    @visual_format = VisualFormat.new
  end

  # GET /visual_formats/1/edit
  def edit
  end

  # POST /visual_formats
  # POST /visual_formats.json
  def create
    @visual_format = VisualFormat.new(visual_format_params)

    respond_to do |format|
      if @visual_format.save
        format.html { redirect_to @visual_format, notice: 'Visual format was successfully created.' }
        format.json { render :show, status: :created, location: @visual_format }
      else
        format.html { render :new }
        format.json { render json: @visual_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visual_formats/1
  # PATCH/PUT /visual_formats/1.json
  def update
    respond_to do |format|
      if @visual_format.update(visual_format_params)
        format.html { redirect_to @visual_format, notice: 'Visual format was successfully updated.' }
        format.json { render :show, status: :ok, location: @visual_format }
      else
        format.html { render :edit }
        format.json { render json: @visual_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visual_formats/1
  # DELETE /visual_formats/1.json
  def destroy
    @visual_format.destroy
    respond_to do |format|
      format.html { redirect_to visual_formats_url, notice: 'Visual format was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visual_format
      @visual_format = VisualFormat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visual_format_params
      params.require(:visual_format).permit(:visual_id, :gabarit_id)
    end
end
