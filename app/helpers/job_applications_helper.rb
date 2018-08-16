module JobApplicationsHelper

    def application_exists(muso, job)
        muso.job_applications.where(job: job).count > 0 ? true : false
    end

    def my_job_app?(job_app)
        current_muso == job_app.muso
    end
end
