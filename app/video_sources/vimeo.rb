class Vimeo
  include HTTParty
  base_uri 'vimeo.com'

  def self.name
    'vimeo'
  end

  def initialize(id:)
    @id = id
  end

  def get_title
    urn = "/api/v2/video/#{id}.json"

    response = self.class.get(urn)

    response[0]['title']
  end

  protected

    attr_accessor :id
end
