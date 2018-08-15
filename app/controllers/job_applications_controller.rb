class JobApplicationsController < ApplicationController
  
  def create
    job_app = JobApplication.new(
      job: Job.find(params[:job_id]),
      muso: current_muso,
      rejected: false 
    )
   
    if job_app.save
      send_mail
      redirect_to '/jobs'
    else
      @jobs = Job.all
      render '/jobs/index'
    end
  end

  def destroy
    job_app = JobApplication.find(params[:job_application_id])
    if job_app.destroy
      redirect_to '/jobs'
    else
      @jobs = Job.all
      render '/jobs/index'
    end
  end

  def reject
    job_app = JobApplication.find(params[:job_application_id])
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
