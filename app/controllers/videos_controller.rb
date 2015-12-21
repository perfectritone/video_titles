class VideosController < ApplicationController

  def title
    video = Video.new(id: params[:video_id], source: Vimeo)
    @title = video.get_title

    respond_to do |format|
      format.json { render json: { title: @title } }
      format.html
    end
  end
end
