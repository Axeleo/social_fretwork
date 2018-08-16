class MusoEmbedsController < ApplicationController

  def new
    @muso_embeds = MusoEmbed.new
  end

  def edit
    redirect_to musos_path and return unless !!current_muso
    @muso_embed = MusoEmbed.find(params[:id])
  end

  def create
    redirect_to musos_path and return unless !!current_muso
    @muso_embed = MusoEmbed.new(
      url: params[:url],
      muso: muso
    )
    if @muso_embed.save
      redirect_to edit_muso_path(current_muso.id)
    else
      render "musos/show"
    end
  end

  def update
    redirect_to musos_path and return unless !!current_muso
    @muso_embed = MusoEmbed.find(params[:id])
    @muso_embed.url = params[:url]
    
    if @muso_embed.save
      redirect_to edit_muso_path(@muso_id)
    else
      render "musos/edit"
    end   
  end

end