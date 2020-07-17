class Address < ActiveRecord::Base
  belongs_to :entity, polymorphic: true

  validates_format_of :postal_code,
    with: /\d{5}(-\d{4})?/,
    message: "Postal code must be valid"  
end
