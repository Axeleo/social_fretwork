class HostsController < ApplicationController
    def new
        @host = Host.new
    end

    def create
        redirect '/musos' if logged_in?
        @host = Host.new(host_create_params)
        if @host.save
            session[:host_id] = @host.id
            redirect_to hosts_path
        else
            render :new
        end
    end

    def old_host_jobs
        redirect "/jobs" unless !!current_host
        @jobs = Job.completed.where(host: current_host)
        render :"jobs/index"
    end
    
    def host_jobs
    redirect_to "/jobs" and return unless !!current_host
    @jobs = Job.non_completed.where(host: current_host)
    render :"jobs/index"
    end

    private
    def host_create_params
        params.require(:host).permit(:name, :email, :password)
    end
end
