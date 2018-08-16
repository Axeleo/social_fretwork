class JobsController < ApplicationController

  def index
    @jobs = Job.vacant
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

  def update
    @job = Job.find(params[:id])''
    redirect_to job_path(job.id) and return if my_job?(@job)
    if @job.update_attributes(job_edit_params)
      redirect_to '/jobs'
    else
      render :edit
    end
  end

  def destroy
    @job = Job.find(params[:id])
    redirect_to job_path(job.id) and return unless !job.complete && my_job?(@job)
    if @job.destroy
      redirect_to "/jobs"
    else
      render :show
    end
  end

  def select_successful_applicant
    job = Job.find(params[:id])
    redirect_to job_path(job.id) and return unless !job.filled && my_job?(@job)
    job.job_application = JobApplication.find(params[:job_application_id])
    job.filled = true
    if job.save
      NotificationMailer.accepted_job_app_email(job).deliver_later
      redirect_to "/jobs"
    else
      render :show
    end
 
  end

  def mark_job_completed
    job = Job.find(params[:id])
    redirect_to job_path(job.id) and return unless job.filled && my_job?(@job)
    job.complete = true
     if job.save
      NotificationMailer.completed_job_app_email(job).deliver_later
      redirect_to "/jobs/#{job.id}/review"
    else
      render :show
    end
  end


  private
  def create_autofill_params
    {
      # CHANGE THIS ONCE USER HELPERS ARE AVAIABLE
      host: Host.first,
      # job_application: ,
      complete: false,
      filled: false
    }
  end

  def job_create_params
    params.require(:job).permit(:title, :description, :budget, :location, :date_time, :duration).merge(create_autofill_params)
  end

  def job_edit_params
    params.require(:job).permit(:title, :description, :budget, :location, :date_time, :duration, :complete)
  end
end
