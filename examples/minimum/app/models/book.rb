# typed: false

class Book < ActiveRecord::Base
  has_many :books_authors
  has_many :authors, through: :books_authors
  has_many :tags, as: :entity

  validates :title, presence: true

  scope :from_author, ->(author) do
    joins(:authors).where('author_id': author.id)
  end
end
