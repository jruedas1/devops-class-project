class StudentController < ApplicationController
  def index
  	@students = Student.all
  end

  def new
  	@student = Student.new
  end

  def edit
  end

  def show
    @students = Student.find(params[:id])
  end

  def create_student
    student = Student.create(student_params)
    redirect_to student_path 
  end

  private
  	def student_params 
  		params.require(:student).permit(:title, :location, :skills, :summary, :github, :linkedin, :school, :jobtypes, :photo)
  	end
end

