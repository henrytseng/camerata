class AddressSerializer
  include Camerata::Serializable

  attributes :id, :street_address, :postal_code
end
