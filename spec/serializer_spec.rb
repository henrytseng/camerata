# typed: false

RSpec.describe Camerata::Serializer do
  it 'should initalize' do
    expect(do
      described_class.new
    end).not_to raise(Exception)
  end

  context 'when enumerable is a single instance member' do
  end

  context 'when enumerable is a collection' do
  end

  context 'when metadata is included' do
  end

  context 'when relationships are included' do
  end

  context 'when links are included' do
  end
end
