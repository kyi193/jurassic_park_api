class CagesController < ApplicationController
  before_action :set_cage, only: [:show, :edit, :update, :destroy]

  # GET /cages
  # GET /cages.json
  def index
    @cages = Cage.all
    @cages = @cages.filter_by_max_capacity(params[:max_capacity]) if params[:max_capacity].present?
    @cages = @cages.filter_by_cage_status(params[:cage_status]) if params[:cage_status].present?
  end

  # GET /cages/1
  # GET /cages/1.json
  def show
  end

  # GET /cages/new
  def new

  end

  # GET /cages/1/edit
  def edit
  end

  # POST /cages
  # POST /cages.json
  def create
    @cage = Cage.new(cage_params)

    respond_to do |format|
      if @cage.save
        format.html { redirect_to @cage, notice: 'Cage was successfully created.' }
        format.json { render :show, status: :created, location: @cage }
      else
        format.html { render :new }
        format.json { render json: @cage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cages/1
  # PATCH/PUT /cages/1.json
  def update
    respond_to do |format|
      if @cage.update(cage_params)
        format.html { redirect_to @cage, notice: 'Cage was successfully updated.' }
        format.json { render :show, status: :ok, location: @cage }
      else
        format.html { render :edit }
        format.json { render json: @cage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cages/1
  # DELETE /cages/1.json
  def destroy
    @cage.destroy
    respond_to do |format|
      format.html { redirect_to cages_url, notice: 'Cage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cage
      @cage = Cage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cage_params
      params.require(:cage).permit(:max_capacity, :num_of_dinosaurs)
    end
end
