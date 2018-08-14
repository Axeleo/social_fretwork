class JobsController < ApplicationController

  def index
    @jobs = Job.all_unfilled
  end

  def show
    @job = Job.find(params[:id])
  end

  def create
    @job = Job.new(job_create_params)
    if @job.save
      redirect_to '/jobs'
    else
      render :new
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def destroy
    @job = Job.find(params[:id])
    if @job.destroy
      redirect_to "/jobs"
    else
      render :show
    end
  end

  def select_succsessful_application
    
  end

  def select_job_completed
    
  end


  private
  def create_autofill_params
    {
      host_id: current_user.id,
      succesful_application: false,
      completed: false
    }
  end

  def job_create_params
    params.require(:job).permit(:title, :description, :budget, :location, :date_time, :duration).merge(extra_params)
  end

  def job_edit_params
    params.require(:job).permit(:title, :description, :budget, :location, :date_time, :duration, :completed)
  end
end
