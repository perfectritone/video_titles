class VideosController < ApplicationController

  def title
    video = Video.new(id: params[:video_id], source: Vimeo)
    title = video.get_title

    render json: { title: title }
  end
end
