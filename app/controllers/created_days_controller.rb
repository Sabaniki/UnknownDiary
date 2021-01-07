class CreatedDaysController < ApplicationController
  before_action :set_created_day, only: [:show]

  # GET /created_days
  # GET /created_days.json
  def index
    @created_days = CreatedDay.all
  end

  # GET /created_days/1
  # GET /created_days/1.json
  def show
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
