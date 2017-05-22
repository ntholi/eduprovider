class TutoredCoursesController < AuthenticateTutorController
  before_action :set_tutored_course, only: [:show, :edit, :update, :destroy]

  # GET /tutored_courses
  # GET /tutored_courses.json
  def index
    @tutored_courses = TutoredCourse.all
  end

  # GET /tutored_courses/1
  # GET /tutored_courses/1.json
  def show
  end

  # GET /tutored_courses/new
  def new
    @tutored_course = TutoredCourse.new
  end

  # GET /tutored_courses/1/edit
  def edit
  end

  # POST /tutored_courses
  # POST /tutored_courses.json
  def create
    @tutored_course = TutoredCourse.new(tutored_course_params)
    @tutored_course.tutor = current_tutor
    respond_to do |format|
      if @tutored_course.save
        format.html { redirect_to tutored_courses_path, notice: 'Registered successfully' }
        format.json { render :show, status: :created, location: @tutored_course }
      else
        format.html { render :new }
        format.json { render json: @tutored_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tutored_courses/1
  # PATCH/PUT /tutored_courses/1.json
  def update
    respond_to do |format|
      if @tutored_course.update(tutored_course_params)
        format.html { redirect_to @tutored_course, notice: 'Tutored course was successfully updated.' }
        format.json { render :show, status: :ok, location: @tutored_course }
      else
        format.html { render :edit }
        format.json { render json: @tutored_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tutored_courses/1
  # DELETE /tutored_courses/1.json
  def destroy
    @tutored_course.destroy
    respond_to do |format|
      format.html { redirect_to tutored_courses_url, notice: 'Tutored course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tutored_course
      @tutored_course = TutoredCourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tutored_course_params
      params.require(:tutored_course).permit(:tutor_id, :course_id)
    end
end
