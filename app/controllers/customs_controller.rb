class CustomsController < ApplicationController
  before_action :set_custom, only: [:show, :edit, :update, :destroy]

  # GET /customs
  # GET /customs.json
  def index
    @customs = Custom.all
  end

  # GET /customs/1
  # GET /customs/1.json
  def show
  end

  # GET /customs/new
  def new
    @custom = Custom.new
  end

  # GET /customs/1/edit
  def edit
  end

  # POST /customs
  # POST /customs.json
  def create
    @custom = Custom.new(custom_params)

    respond_to do |format|
      if @custom.save
        format.html { redirect_to @custom, notice: 'Custom was successfully created.' }
        format.json { render :show, status: :created, location: @custom }
      else
        format.html { render :new }
        format.json { render json: @custom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customs/1
  # PATCH/PUT /customs/1.json
  def update
    respond_to do |format|
      if @custom.update(custom_params)
        format.html { redirect_to :back}
        format.json { render :show, status: :ok, location: @custom }
      else
        format.html { render :edit }
        format.json { render json: @custom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customs/1
  # DELETE /customs/1.json
  def destroy
    @custom.destroy
    respond_to do |format|
      format.html { redirect_to customs_url, notice: 'Custom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom
      @custom = Custom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def custom_params
      params.require(:custom).permit(:home_text_fr, :home_text_nl, :home_text_en, 

                                      :concept_title_fr, :concept_title_nl, :concept_title_en,
                                      :concept_text_fr, :concept_text_nl, :concept_text_en,

                                      :step_one_title_fr, :step_one_title_nl, :step_one_title_en,
                                      :step_one_text_fr, :step_one_text_nl, :step_one_text_en,

                                      :step_two_title_fr, :step_two_title_nl, :step_two_title_en,
                                      :step_two_text_fr, :step_two_text_nl, :step_two_text_en,

                                      :step_three_title_fr, :step_three_title_nl, :step_three_title_en,
                                      :step_three_text_fr, :step_three_text_nl, :step_three_text_en,
                                      :step_four_title_fr, :step_four_title_nl, :step_four_title_en,
                                      :step_four_text_fr, :step_four_text_nl, :step_four_text_en,
                                      :image_one, :image_two, :image_three, :image_four, :image_down)
    end
end
