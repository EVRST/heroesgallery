class UploadGabaritsController < ApplicationController
  before_action :set_upload_gabarit, only: [:show, :edit, :update, :destroy]

  # GET /upload_gabarits
  # GET /upload_gabarits.json
  def index
    @upload_gabarits = UploadGabarit.all
  end

  # GET /upload_gabarits/1
  # GET /upload_gabarits/1.json
  def show
  end

  # GET /upload_gabarits/new
  def new
    @upload_gabarit = UploadGabarit.new
  end

  # GET /upload_gabarits/1/edit
  def edit
  end

  # POST /upload_gabarits
  # POST /upload_gabarits.json
  def create
    @upload_gabarit = UploadGabarit.new(upload_gabarit_params)

    respond_to do |format|
      if @upload_gabarit.save
        format.html { redirect_to :back }
        format.json { render :show, status: :created, location: @upload_gabarit }
      else
        format.html { render :new }
        format.json { render json: @upload_gabarit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /upload_gabarits/1
  # PATCH/PUT /upload_gabarits/1.json
  def update
    respond_to do |format|
      if @upload_gabarit.update(upload_gabarit_params)
        format.html { redirect_to @upload_gabarit, notice: 'Upload gabarit was successfully updated.' }
        format.json { render :show, status: :ok, location: @upload_gabarit }
      else
        format.html { render :edit }
        format.json { render json: @upload_gabarit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /upload_gabarits/1
  # DELETE /upload_gabarits/1.json
  def destroy
    @upload_gabarit.destroy
    respond_to do |format|
      format.html { redirect_to upload_gabarits_url, notice: 'Upload gabarit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_upload_gabarit
      @upload_gabarit = UploadGabarit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def upload_gabarit_params
      params.require(:upload_gabarit).permit(:upload_id, :gabarit_id)
    end
end
