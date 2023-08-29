class JobsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @jobs = Job.all
    render 'jobs/index'
  end

  def create
    @job = Job.new()
    if @job.save
      render 'jobs/create'
    end
  end

  def show
    @job = Job.find_by(id: params[:id])
    if @job
      render 'jobs/show'
    end
  end
end
