class MusoImgsController < ApplicationController
    
    def create
        m_img = MusoImg.new(
            muso: Muso.find(params[:muso_id])
        )
        m_img.img = params[:file]
        if m_img.save
            redirect_to "/musos/#{params[:muso_id]}/edit"
        else
            render "/musos/#{params[:muso_id]}/edit"
        end
    end
end
