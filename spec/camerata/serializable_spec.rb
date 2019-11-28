# typed: false

require 'securerandom'

RSpec.describe Camerata::Serializable do
  describe 'when using defaults' do
    subject { BookSerializer }

    it 'should initalize' do
      expect { subject.new }.not_to raise_error
    end
  end

  describe 'when building id' do
  end

  describe 'when dynamically overriding type' do
  end

  describe 'when building relationships' do
    describe 'when using eager loading' do
    end
  end

  describe 'when dynamically building links' do
  end
end
