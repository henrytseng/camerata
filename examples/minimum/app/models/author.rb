class Author < ActiveRecord::Base
  has_one :address
  has_many :books, through: :book_authors
  has_many :tags, as: :entity

  validates :first_name, presence: true
  validates :last_name, presence: true
end
