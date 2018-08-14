class LoginsController < ApplicationController
    # def current_user
    #     Muso.find_by(id: session[:user_id])
    # end

    # def current_host

    # end

    def logged_in?
        !!current_muso
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
            redirect '/'
            # view job lists
        else
            render :login
        end
    end

    def host_session
        host = Host.find_by(email: params[:email])
        if host && host.authenticate(params[:password])
            session[:host_id] = host.id 
            redirect '/'
            # view list of musos
        else
            render :login
        end
    end
end