class Category < ActiveRecord::Base
  has_many :books
  has_many :tags, as: :entity

  validates :name, presence: true
end
