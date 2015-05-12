class ImageLibrariesController < ApplicationController
  before_action :set_image_library, only: [:show, :edit, :update, :destroy]

  # GET /image_libraries
  # GET /image_libraries.json
  def index
    @image_libraries = ImageLibrary.all
  end

  # GET /image_libraries/1
  # GET /image_libraries/1.json
  def show
  end

  # GET /image_libraries/new
  def new
    @image_library = ImageLibrary.new
  end

  # GET /image_libraries/1/edit
  def edit
  end

  # POST /image_libraries
  # POST /image_libraries.json
  def create
    @image_library = ImageLibrary.new(image_library_params)

    respond_to do |format|
      if @image_library.save
        format.html { redirect_to @image_library, notice: 'Image library was successfully created.' }
        format.json { render action: 'show', status: :created, location: @image_library }
      else
        format.html { render action: 'new' }
        format.json { render json: @image_library.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /image_libraries/1
  # PATCH/PUT /image_libraries/1.json
  def update
    respond_to do |format|
      if @image_library.update(image_library_params)
        format.html { redirect_to @image_library, notice: 'Image library was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @image_library.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_libraries/1
  # DELETE /image_libraries/1.json
  def destroy
    @image_library.destroy
    respond_to do |format|
      format.html { redirect_to image_libraries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_library
      @image_library = ImageLibrary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_library_params
      params.require(:image_library).permit(:name)
    end
end
