require 'rails_helper'

describe Video do

  let(:id) { '21483764' }
  let(:title_for_id) { 'Dad & Son Football Session' }
  let(:source) { Vimeo }
  let(:source_name) { 'vimeo' }

  let(:described_instance) { described_class.new(id: id, source: source) }

  describe '#get_title' do
    it 'should go to the external API when there is no title persisted' do
      expect(described_instance.get_title).to eq title_for_id
    end
    
    it 'should not return anything when the video has no title' do
      video = build(:video, id: id, source: source_name)

      expect(described_instance.get_title).to eq title_for_id
    end

    it 'should should return a title for a video when one is persisted' do
      title = 'Citizen Kane'
      video_object = create(:video, id: id, source: source_name)
      title_object = create(:title, title: title, video: video_object)

      expect(described_instance.get_title).to eq title
    end
  end
end
