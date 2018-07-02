class StudentsController < ApplicationController
  def index
  end

  def edit
  end

  def new
  	@student = Student.new
  end

  def show
  end

  def create
    @student = Student.create(student_params)
    redirect_to students_path
  end

  private

  def student_params
     params.require(:student).permit(:title, :location, :skills, :summary, :github, :linkedin, :school, :jobtypes, :photo)
  end
end
