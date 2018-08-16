class MusoImgsController < ApplicationController
    
    def create
        muso = Muso.find(params[:muso_id])
        redirect_to musos_path and return unless current_muso == muso
        m_img = MusoImg.new(muso: muso, img: params[:file])
        if m_img.save
            redirect_to edit_muso_path(muso.id)
        else
            render "/musos/#{muso.id}/edit"
        end
    end
end
