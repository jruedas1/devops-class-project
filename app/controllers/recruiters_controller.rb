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
    redirect_to recruiters_path
  end

  def update
    @recruiter = Recruiter.find(params[:id])
    @recruiter.update(recruiter_params)
    redirect_to recruiter_path(params[:id])
  end

  def destroy
    Recruiter.destroy(params[:id])
    redirect_to recruiters_path
  end

  private

  def recruiter_params
     params.require(:recruiter).permit(:name, :email, :company, :website, :linkedin, :bio, :user_id)
  end
end
