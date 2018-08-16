class JobApplicationsController < ApplicationController
  
  def create
    job = Job.find(params[:job_id])
    if application_exists(current_muso, job) || !current_muso
      redirect_to jobs_path and return if Job.find(params[:job_id])
    end
    job_app = JobApplication.new(
      job: job,
      muso: current_muso,
      rejected: false 
    )
    if job_app.save
      NotificationMailer.new_job_app_email(job_app).deliver_later
      redirect_to jobs_path
    else
      @jobs = Job.all
      render '/jobs/index'
    end
  end

  def destroy
    job_app = JobApplication.find(params[:job_application_id])
    redirect_to jobs_path and return unless my_job_app?(job_app)
    if job_app.destroy
      redirect_to jobs_path
    else
      @jobs = Job.all
      render '/jobs/index'
    end
  end

  def reject
    job_app = JobApplication.find(params[:job_application_id])
    redirect_to jobs_path and return unless my_job?(job_app.job)
    job_app.rejected = true
    if job_app.save
      redirect_to "/jobs/#{params[:id]}"
    else
      redirect_to "/jobs/#{params[:id]}"
    end
  end

  private
  def preset_params
    {
      # not sure about this
      host_id: Host.find(params[:host_id]),
      muso_id: current_muso.id,
      rejected: false 
    }
  end

end
