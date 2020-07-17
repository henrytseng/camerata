class Tag < ActiveRecord::Base
  belongs_to :entity, polymorphic: true

  validates :name, presence: true
end
