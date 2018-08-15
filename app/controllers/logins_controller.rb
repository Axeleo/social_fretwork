class LoginsController < ApplicationController
    
    def muso_or_host
        render :muso_or_host
    end

    def musos
        @role = 'musos'
        render :login
    end

    def hosts
        @role = 'hosts'
        render :login
    end

    def muso_session
        muso = Muso.find_by(email: params[:email])
        if muso && muso.authenticate(params[:password])
            session[:muso_id] = muso.id 
            redirect_to '/jobs'
        else
            render :login
        end
    end

    def host_session
        host = Host.find_by(email: params[:email])
        if host && host.authenticate(params[:password])
            session[:host_id] = host.id 
            redirect_to '/musos'
        else
            render :login
        end
    end

    def delete_session

        session[:muso_id] = nil
        session[:host_id] = nil
        redirect_to '/login'
        # ^ need to change this to something that makes more sense
    end
    
end