class AudioLessonsController < ApplicationController
  before_action :set_audio_lesson, only: [:show, :edit, :update, :destroy]

  # GET /audio_lessons
  # GET /audio_lessons.json
  def index
    @audio_lessons = AudioLesson.all
  end

  # GET /audio_lessons/1
  # GET /audio_lessons/1.json
  def show
  end

  # GET /audio_lessons/new
  def new
    @audio_lesson = AudioLesson.new
  end

  # GET /audio_lessons/1/edit
  def edit
  end

  # POST /audio_lessons
  # POST /audio_lessons.json
  def create
    @audio_lesson = AudioLesson.new(audio_lesson_params)

    respond_to do |format|
      if @audio_lesson.save
        format.html { redirect_to @audio_lesson, notice: 'Audio lesson was successfully created.' }
        format.json { render :show, status: :created, location: @audio_lesson }
      else
        format.html { render :new }
        format.json { render json: @audio_lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /audio_lessons/1
  # PATCH/PUT /audio_lessons/1.json
  def update
    respond_to do |format|
      if @audio_lesson.update(audio_lesson_params)
        format.html { redirect_to @audio_lesson, notice: 'Audio lesson was successfully updated.' }
        format.json { render :show, status: :ok, location: @audio_lesson }
      else
        format.html { render :edit }
        format.json { render json: @audio_lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /audio_lessons/1
  # DELETE /audio_lessons/1.json
  def destroy
    @audio_lesson.destroy
    respond_to do |format|
      format.html { redirect_to audio_lessons_url, notice: 'Audio lesson was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_audio_lesson
      @audio_lesson = AudioLesson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def audio_lesson_params
      params.require(:audio_lesson).permit(:lesson_id, :audio)
    end
end
