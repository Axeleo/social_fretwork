class MusoEmbedsController < ApplicationController

  def new
    @muso_embeds = MusoEmbed.new
  end

  def edit
    @muso_embed = MusoEmbed.find(params[:id])
  end

  def create
    @muso_embed = MusoEmbed.new
    @muso_embed.url = params[:muso_embeds][:url]
    @muso_embed.muso = current_muso
    @muso_embed.embed_type = 'youtube' 
    if @muso_embed.save
      redirect_to edit_muso_path(current_muso.id)
    else
      render :"musos/show"
    end
  end

  def update
    @muso_embed = MusoEmbed.find(params[:id])
    @muso_embed.url = params[:url]
    
    if @muso_embed.save
      redirect_to muso_embed_path(@muso_id)
    else
      render :"musos/edit"
    end   
  end

end