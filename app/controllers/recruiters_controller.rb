class RecruitersController < ApplicationController
  def index
  	@recruiters = Recruiter.all
  end

  def edit
  end

  def show
  end

  def new
  end
end
