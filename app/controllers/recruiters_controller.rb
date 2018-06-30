class RecruitersController < ApplicationController
  def index
  	@recruiters = Recruiter.all
  end

  def edit
     @recruiter = Recruiter.find(params[:id])
  end

  def show
  	@recruiter = Recruiter.find(params[:id])
  end

  def new
  	@recruiter = Recruiter.new
  end

  def create
    @recruiter = Recruiter.create(recruiter_params)
    redirect_to root_path
  end

  def update
    #@recruiter.update(recruiter_params)
    #redirect_to recruiter_path(params[:id])
  end

  private

  def recruiter_params
     params.require(:recruiter).permit(:name, :email, :company, :website, :linkedin, :bio, :user_id)
  end
end
