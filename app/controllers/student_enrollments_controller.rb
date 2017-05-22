class StudentEnrollmentsController < ApplicationController
  before_action :set_student_enrollment, only: [:show, :edit, :update, :destroy]

  # GET /student_enrollments
  # GET /student_enrollments.json
  def index
    @student_enrollments = StudentEnrollment.all
  end

  # GET /student_enrollments/1
  # GET /student_enrollments/1.json
  def show
  end

  # GET /student_enrollments/new
  def new
    @student_enrollment = StudentEnrollment.new
  end

  # GET /student_enrollments/1/edit
  def edit
  end

  # POST /student_enrollments
  # POST /student_enrollments.json
  def create
    @student_enrollment = StudentEnrollment.new(student_enrollment_params)
    @student_enrollment.student = current_student
    respond_to do |format|
      if @student_enrollment.save
        format.html { redirect_to @student_enrollment, notice: 'You have enrolled successfully' }
        format.json { render :show, status: :created, location: @student_enrollment }
      else
        format.html { render :new }
        format.json { render json: @student_enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_enrollments/1
  # PATCH/PUT /student_enrollments/1.json
  def update
    respond_to do |format|
      if @student_enrollment.update(student_enrollment_params)
        format.html { redirect_to @student_enrollment, notice: 'Student enrollment was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_enrollment }
      else
        format.html { render :edit }
        format.json { render json: @student_enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_enrollments/1
  # DELETE /student_enrollments/1.json
  def destroy
    @student_enrollment.destroy
    respond_to do |format|
      format.html { redirect_to student_enrollments_url, notice: 'Student enrollment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_enrollment
      @student_enrollment = StudentEnrollment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_enrollment_params
      params.require(:student_enrollment).permit(:student_id, :tutored_course_id)
    end
end
