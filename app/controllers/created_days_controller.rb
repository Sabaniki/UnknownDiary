class CreatedDaysController < ApplicationController
  before_action :set_created_day, only: [:show, :edit, :update, :destroy]

  # GET /created_days
  # GET /created_days.json
  def index
    @created_days = CreatedDay.all
  end

  # GET /created_days/1
  # GET /created_days/1.json
  def show
  end

  # GET /created_days/new
  def new
    @created_day = CreatedDay.new
  end

  # GET /created_days/1/edit
  def edit
  end

  # POST /created_days
  # POST /created_days.json
  def create
    @created_day = CreatedDay.new(created_day_params)

    respond_to do |format|
      if @created_day.save
        format.html { redirect_to @created_day, notice: 'Created day was successfully created.' }
        format.json { render :show, status: :created, location: @created_day }
      else
        format.html { render :new }
        format.json { render json: @created_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /created_days/1
  # PATCH/PUT /created_days/1.json
  def update
    respond_to do |format|
      if @created_day.update(created_day_params)
        format.html { redirect_to @created_day, notice: 'Created day was successfully updated.' }
        format.json { render :show, status: :ok, location: @created_day }
      else
        format.html { render :edit }
        format.json { render json: @created_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /created_days/1
  # DELETE /created_days/1.json
  def destroy
    @created_day.destroy
    respond_to do |format|
      format.html { redirect_to created_days_url, notice: 'Created day was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_created_day
      @created_day = CreatedDay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def created_day_params
      params.require(:created_day).permit(:day)
    end
end
