class RecruiterController < ApplicationController
  def new
  	@recruiter = Recruiter.new
  end

  def edit
  end

  def index
  	@recruiters = Recruiter.all
  end

  def show
    @recruiter = Recruiter.find(params[:id])
  end

  def create
  	@recruiter = Recruiter.create(recruiter_params)
    redirect_to recruiters_path
  end

  private

  def recruiter_params
     params.require(:recruiter).permit(:name, :email, :company, :website, :linkedin, :bio, :user_id)
  end

end
