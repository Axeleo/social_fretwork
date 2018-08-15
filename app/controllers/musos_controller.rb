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
        @muso = Muso.new
    end
    
    def create
        redirect '/jobs' if logged_in?
        @muso = Muso.new(muso_create_params)
        
        if @muso.save
            session[:muso_id] = @muso.id
            redirect_to '/jobs'
        else
            render :new
        end
    end

    def edit
        @muso = Muso.find(params[:id])
        @images = MusoImg.where(muso: @muso)
    end

    def update
        muso = Muso.find(params[:id])
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

    def destroy
        ##session destroy
        ##muso destory 
    end

    def create_tags
        @muso = Muso.find(params[:muso_id])
        @muso.tag_list.add params[:tags].split(',')
        @muso.save
        redirect_to edit_muso_path(@muso.id)
    end

    private 
    def muso_create_params
        params.require(:muso).permit(:name, :email, :password, :bio, :base_price, :location, :avatar)
    end
    def muso_edit_params
        params.require(:muso).permit(:name, :email, :bio, :base_price, :location, :avatar)
    end
end
