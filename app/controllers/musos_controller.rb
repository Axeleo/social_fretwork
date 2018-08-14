class MusosController < ApplicationController
    def index
        @musos = Muso.all
    end

    def new
        @muso = Muso.new
    end
    
    def create
        @muso = Muso.new(muso_create_params)
        if @muso.save
            redirect musos_path
        else
            render :new
        end
    end

    def edit
        @muso = Muso.find(params[:id])
    end

    def update
        @muso = Muso.find(params[:id])
        @muso(muso_edit_params)
        if @muso.save
            redirect muso_path(@muso.id)
        else
            render :edit
        end
    end

    def destroy
        ##session destroy
        ##muso destory 
    end

    private 
    def muso_create_params
        params.require(:muso).permit(:name, :email, :password_digest, :bio, :base_price, :location, :avatar)
    end
    def muso_edit_params
        params.require(:muso).permit(:name, :email, :bio, :base_price, :location, :avatar)
    end
end