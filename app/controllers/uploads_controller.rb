class UploadsController < ApplicationController
  before_action :set_upload, only: [:show, :edit, :update, :destroy, :download]

  # GET /uploads
  # GET /uploads.json
  def index
    @uploads = Upload.all
  end

  # GET /uploads/1
  # GET /uploads/1.json
  def show
    @upload_gabarit = UploadGabarit.new
    @visual = Visual.where(upload_id: @upload.id).last

    @order_item = current_order.order_items.new

    @current_order_item = current_order.order_items.where(visual_id: @visual.id).last if current_order

    @gabarits = Gabarit.all
    @visual_gabarit = VisualGabarit.new

    @default_upload_price = 155
  end

  # GET /uploads/new
  def new
    @upload = Upload.new
    @upload_gabarit = UploadGabarit.new

    @default_upload_price = 155
  end

  # GET /uploads/1/edit
  def edit
  end

  # POST /uploads
  # POST /uploads.json
  def create
    @upload = Upload.new(upload_params)

    respond_to do |format|
      if @upload.save
        Visual.create(is_upload: true, upload_id: @upload.id)
        format.html { redirect_to @upload, notice: 'Upload was successfully created.' }
        format.json { render :show, status: :created, location: @upload }
      else
        format.html { render :new }
        format.json { render json: @upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uploads/1
  # PATCH/PUT /uploads/1.json
  def update
    respond_to do |format|
      if @upload.update(upload_params)
        format.html { redirect_to @upload, notice: 'Upload was successfully updated.' }
        format.json { render :show, status: :ok, location: @upload }
      else
        format.html { render :edit }
        format.json { render json: @upload.errors, status: :unprocessable_entity }
      end
    end
  end

  def download
    extension = File.extname(@upload.image_file_name)
    
    data = open(view_context.image_path @upload.image.url(:original))

    send_data data.read, filename: "original_#{@upload.id}#{extension}", type: @upload.image_content_type, :x_sendfile => true
  end

  # DELETE /uploads/1
  # DELETE /uploads/1.json
  def destroy
    @upload.destroy
    respond_to do |format|
      format.html { redirect_to uploads_url, notice: 'Upload was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_upload
      @upload = Upload.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def upload_params
      params.require(:upload).permit(:horizontal, :plexi, :hauteur, :largeur, :note, :user_id, :image)
    end
end
