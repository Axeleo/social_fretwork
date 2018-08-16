module JobsHelper

    def my_job?(job)
        current_host == job.host
    end

end
