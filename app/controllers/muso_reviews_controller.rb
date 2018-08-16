class MusoReviewsController < ApplicationController
    def show
        @reviews = MusoReview.all
    end
    
    def review_job
        redirect_to jobs_path and return unless my_job_app?(job_app)
        @job = Job.find(params[:job_id])
        @review = MusoReview.new
    end

    def create
        @job = Job.find(params[:job_id])
        @review = MusoReview.new(
            job: @job,
            rating: params[:rating],
            comment: params[:comment],
            muso: @job.job_application.muso
        )
        if @review.save
            redirect_to "/musos/#{@review.muso.id}"
        else
            render :review_job
        end
    end


end
