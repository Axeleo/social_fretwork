class MusoReviewsController < ApplicationController
    def show
        @reviews = MusoReview.all
    end
    
    def review_job
        @job = Job.find(params[:job_id])
        @review = MusoReview.new
    end

    def create
        job = Job.find(params[:job_id])
        @review = MusoReview.new(
            job: job,
            rating: params[:rating],
            comment: params[:comment],
        )
        if @review.save
            job.muso_review = @review
            job.save
            redirect_to "/musos/#{job.job_application.muso.id}"
        else
            render :review_job
        end
    end


end
