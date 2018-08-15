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

    private
    def host_create_params
        params.require(:host).permit(:name, :email, :password)
    end
end
