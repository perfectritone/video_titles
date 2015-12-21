require 'rails_helper'

describe Video do

  let(:id) { '928938909' }
  let(:source) { Vimeo }

  let(:described_instance) { described_class.new(id: id, source: source) }

  describe '#get_title' do
    it 'should not return anything when the DB is empty' do
      expect(described_instance.get_title).to be_nil
    end
  end
end
