# typed: false
require './examples/minimum/spec/spec_helper'

RSpec.describe 'Collection' do
  let(:author) { create :author, first_name: 'Jess' }
  let(:addresses) { create :address, author: author }
  let(:books) { create_list :book, 101, authors: [author] }
  let(:enumerable) { Book.all }

  describe 'when collection of entities' do
    it 'should list all entities' do
      books.each { |book| expect(book).to be_valid }
      serializer = BookSerializer.collection(enumerable)

      # TODO:
      # attributes; type-id
      # relationships
      # query-joins-relationships
      # pagination
      # includes
      # filter; by joined field
      # sort; by joined field
      # error
      # meta
      # links
      # fields

      binding.pry
    end
  end
end
