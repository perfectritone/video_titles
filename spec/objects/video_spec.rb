require 'rails_helper'

describe Video do

  let(:id) { '928938909' }
  let(:source) { Vimeo }

  let(:described_instance) { described_class.new(id: id, source: source) }

  describe '#get_title' do
    it 'should not return anything when the DB is empty' do
      expect(described_instance.get_title).to be_nil
    end
    
    it 'should not return anything when the video has no title' do
      video = build(:video, id: id, source: source)

      expect(described_instance.get_title).to be_nil
    end

    it 'should should return a title for a video when one is persisted' do
      title = 'Citizen Kane'
      video_object = create(:video, id: id, source: source)
      title_object = create(:title, title: title, video: video_object)

      expect(described_instance.get_title).to eq title
    end
  end
end
