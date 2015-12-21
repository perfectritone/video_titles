class Video
  
  def initialize(id:, source:)
    @id = id
    @source = source
  end

  def get_title
    persisted_video_titles = get_persisted_video_titles

    if persisted_video_titles.any?
      persisted_title = persisted_video_titles.first
    end
  end

  protected

    attr_reader :id, :source

  private

    def get_persisted_video_titles
      videos = get_persisted_videos

      if videos.any?
        video = videos.first
        video.titles
      else
        videos
      end
    end

    def get_persisted_videos
      source_name = source.name

      VideoPersistence.where(id: id, source: source_name)
    end
end
