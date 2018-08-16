class MusosController < ApplicationController
    def index
        @musos = Muso.all
    end

    def show
        @muso = Muso.find(params[:id])
        @images = MusoImg.where(muso: @muso)
        @muso_embed = MusoEmbed.where(muso: @muso)
    end

    def new
        redirect musos_path if logged_in?
        @muso = Muso.new
    end
    
    def create
        redirect musos_path if logged_in?
        @muso = Muso.new(muso_create_params)
        
        if @muso.save
            session[:muso_id] = @muso.id
            redirect_to jobs_path
        else
            render :new
        end
    end

    def edit
        @muso = Muso.find(params[:id])
        redirect_to musos_path and return unless current_muso == @muso
        @images = MusoImg.where(muso: @muso)
    end

    def update
        muso = Muso.find(params[:id])
        redirect_to musos_path and return unless current_muso == muso
        muso.avatar = params[:file]
        if muso.save
            if muso.update_attributes(muso_edit_params)
                redirect_to muso_path(muso.id)
            else
                render :edit
            end
        else
            render "/musos/#{params[:muso_id]}/edit"
        end
    end

    def create_tags
        @muso = Muso.find(params[:muso_id])
        redirect_to musos_path and return unless current_muso == @muso
        @muso.tag_list.add params[:tags].split(',')
        @muso.save
        redirect_to edit_muso_path(@muso.id)
    end

    def destroy_tags
        @muso = Muso.find(params[:id])
        redirect_to musos_path and return unless current_muso == @muso
        @muso.tag_list.remove params[:tag]
        @muso.save
        redirect_to edit_muso_path(@muso.id)
    end

    def old_muso_jobs
        redirect "/jobs" unless !!current_muso
        @jobs = Job.completed.select{|job| job.muso == current_muso} 
        render :"jobs/index"
    end
    
    def muso_jobs
        redirect_to "/jobs" and return unless !!current_muso
        @jobs = Job.non_completed.select{|job| job.muso == current_muso} 
        render :"jobs/index"
    end

    def muso_applied_jobs
        redirect_to "/jobs" and return unless !!current_muso
        @jobs = current_muso.job_applications.map(&:job).select{|job| !job.filled}
        render :"jobs/index"
    end

    private 
    def muso_create_params
        params.require(:muso).permit(:name, :email, :password, :bio, :base_price, :location, :avatar)
    end
    def muso_edit_params
        params.require(:muso).permit(:name, :email, :bio, :base_price, :location, :avatar)
    end
end
