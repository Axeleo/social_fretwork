module JobApplicationsHelper

    def application_exists(muso, job)
        muso.job_applications.where(job: job).count > 0 ? true : false
    end
end
