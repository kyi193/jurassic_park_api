class DinosaurBreedsController < ApplicationController
  before_action :set_dinosaur_breed, only: [:show, :edit, :update, :destroy]

  # GET /dinosaur_breeds
  # GET /dinosaur_breeds.json
  def index
    @dinosaur_breeds = DinosaurBreed.all
  end

  # GET /dinosaur_breeds/1
  # GET /dinosaur_breeds/1.json
  def show
  end

  # GET /dinosaur_breeds/new
  def new
    @dinosaur_breed = DinosaurBreed.new
  end

  # GET /dinosaur_breeds/1/edit
  def edit
  end

  # POST /dinosaur_breeds
  # POST /dinosaur_breeds.json
  def create
    @dinosaur_breed = DinosaurBreed.new(dinosaur_breed_params)

    respond_to do |format|
      if @dinosaur_breed.save
        format.html { redirect_to @dinosaur_breed, notice: 'Dinosaur breed was successfully created.' }
        format.json { render :show, status: :created, location: @dinosaur_breed }
      else
        format.html { render :new }
        format.json { render json: @dinosaur_breed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dinosaur_breeds/1
  # PATCH/PUT /dinosaur_breeds/1.json
  def update
    respond_to do |format|
      if @dinosaur_breed.update(dinosaur_breed_params)
        format.html { redirect_to @dinosaur_breed, notice: 'Dinosaur breed was successfully updated.' }
        format.json { render :show, status: :ok, location: @dinosaur_breed }
      else
        format.html { render :edit }
        format.json { render json: @dinosaur_breed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dinosaur_breeds/1
  # DELETE /dinosaur_breeds/1.json
  def destroy
    @dinosaur_breed.destroy
    respond_to do |format|
      format.html { redirect_to dinosaur_breeds_url, notice: 'Dinosaur breed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dinosaur_breed
      @dinosaur_breed = DinosaurBreed.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dinosaur_breed_params
      params.require(:dinosaur_breed).permit(:name)
    end
end
