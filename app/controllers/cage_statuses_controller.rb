class CageStatusesController < ApplicationController
  before_action :set_cage_status, only: [:show, :edit, :update, :destroy]

  # GET /cage_statuses
  # GET /cage_statuses.json
  def index
    @cage_statuses = CageStatus.all
  end

  # GET /cage_statuses/1
  # GET /cage_statuses/1.json
  def show
  end

  # GET /cage_statuses/new
  def new
    @cage_status = CageStatus.new
  end

  # GET /cage_statuses/1/edit
  def edit
  end

  # POST /cage_statuses
  # POST /cage_statuses.json
  def create
    @cage_status = CageStatus.new(cage_status_params)

    respond_to do |format|
      if @cage_status.save
        format.html { redirect_to @cage_status, notice: 'Cage status was successfully created.' }
        format.json { render :show, status: :created, location: @cage_status }
      else
        format.html { render :new }
        format.json { render json: @cage_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cage_statuses/1
  # PATCH/PUT /cage_statuses/1.json
  def update
    respond_to do |format|
      if @cage_status.update(cage_status_params)
        format.html { redirect_to @cage_status, notice: 'Cage status was successfully updated.' }
        format.json { render :show, status: :ok, location: @cage_status }
      else
        format.html { render :edit }
        format.json { render json: @cage_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cage_statuses/1
  # DELETE /cage_statuses/1.json
  def destroy
    @cage_status.destroy
    respond_to do |format|
      format.html { redirect_to cage_statuses_url, notice: 'Cage status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cage_status
      @cage_status = CageStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cage_status_params
      params.require(:cage_status).permit(:name)
    end
end
