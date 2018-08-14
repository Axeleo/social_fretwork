class LoginsController < ApplicationController
    def musos
        @role = 'musos'
        render :login
    end

    def hosts
        @role = 'hosts'
        render :login
    end

end