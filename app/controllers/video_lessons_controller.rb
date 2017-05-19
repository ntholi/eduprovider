class VideoLessonsController < ApplicationController
  before_action :set_video_lesson, only: [:show, :edit, :update, :destroy]

  # GET /video_lessons
  # GET /video_lessons.json
  def index
    @video_lessons = VideoLesson.all
  end

  # GET /video_lessons/1
  # GET /video_lessons/1.json
  def show
  end

  # GET /video_lessons/new
  def new
    @video_lesson = VideoLesson.new
  end

  # GET /video_lessons/1/edit
  def edit
  end

  # POST /video_lessons
  # POST /video_lessons.json
  def create
    @video_lesson = VideoLesson.new(video_lesson_params)

    respond_to do |format|
      if @video_lesson.save
        format.html { redirect_to @video_lesson, notice: 'Video lesson was successfully created.' }
        format.json { render :show, status: :created, location: @video_lesson }
      else
        format.html { render :new }
        format.json { render json: @video_lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_lessons/1
  # PATCH/PUT /video_lessons/1.json
  def update
    respond_to do |format|
      if @video_lesson.update(video_lesson_params)
        format.html { redirect_to @video_lesson, notice: 'Video lesson was successfully updated.' }
        format.json { render :show, status: :ok, location: @video_lesson }
      else
        format.html { render :edit }
        format.json { render json: @video_lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_lessons/1
  # DELETE /video_lessons/1.json
  def destroy
    @video_lesson.destroy
    respond_to do |format|
      format.html { redirect_to video_lessons_url, notice: 'Video lesson was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_lesson
      @video_lesson = VideoLesson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_lesson_params
      params.require(:video_lesson).permit(:lesson_id, :video)
    end
end
