class NotificationMailer < ApplicationMailer
    default from: 'the-royal-we@social-fretwork.com'
    layout 'mailer'

    def new_job_app_email(job_app)
        @job_app = job_app
        mail(to: @job_app.job.host.email, subject: 'Social Fretwork: A musician wants to play for you!')
    end

    def accepted_job_app_email(job)
        @job = job
        @job_app = JobApplication.find(@job.job_application_id)
        mail(to: @job_app.muso.email, subject: 'Social Fretwork: A host wants you to play for them!')
    end

    def completed_job_app_email(job)
        @job = job
        @job_app = JobApplication.find(@job.job_application_id)
        mail(to: @job_app.muso.email, subject: 'Social Fretwork: A host has msked your jobs as complete!')
    end
end
