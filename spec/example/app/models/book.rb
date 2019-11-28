class Book < ActiveRecord::Base
  has_many :authors, through: :book_authors
  has_many :tags, as: :entity

  validates :title, presence: true

  scope :from_author, ->(author) do
    joins(:authors).where('author_id': author.id)
  end
end
