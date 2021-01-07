class DiariesController < ApplicationController
  before_action :set_diary, only: [:show, :edit, :update, :destroy]

  # GET /diaries
  # GET /diaries.json
  def index
    @diaries = Diary.all
  end

  # GET /diaries/1
  # GET /diaries/1.json
  def show
  end

  # GET /diaries/new
  def new
    @diary = Diary.new
  end

  # GET /diaries/1/edit
  def edit
  end

  # POST /diaries
  # POST /diaries.json
  def create
    @diary = Diary.new(diary_params)
    today = CreatedDay.find_by(day: Date.today)
    if today.nil?
      new_day = CreatedDay.new(day: Date.today)
      new_day.save
      today = new_day
    end
    @diary.created_day_id = today.id
    @diary.last = ""

    respond_to do |format|
      if @diary.save
        format.html { redirect_to @diary, notice: '日記が投稿されました！' }
        format.json { render :show, status: :created, location: @diary }
      else
        format.html { render :new }
        format.json { render json: @diary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diaries/1
  # PATCH/PUT /diaries/1.json
  def update
    respond_to do |format|
      @diary.is_edited = true
      if @diary.update(diary_params)
        format.html { redirect_to @diary, notice: 'Diary was successfully updated.' }
        format.json { render :show, status: :ok, location: @diary }
      else
        format.html { render :edit }
        format.json { render json: @diary.errors, status: :unprocessable_entity }
      end
    end
  end

  def self.first_20chars(diary)
    local_text = diary.text
    local_text.length <= 20 ? local_text : local_text[0, 20] + '...'
  end

  def created_day(diary)
    CreatedDay.find(diary.created_day_id).day
  end


  # DELETE /diaries/1
  # DELETE /diaries/1.json
  def destroy
    @diary.destroy
    respond_to do |format|
      format.html { redirect_to diaries_url, notice: 'Diary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def self.get_created_day(diary)
    CreatedDay.find(diary.created_day_id).day
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_diary
    @diary = Diary.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def diary_params
    params.require(:diary).permit(:title, :text, :is_edited, :last)
  end
end
