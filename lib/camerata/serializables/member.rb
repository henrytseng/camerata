module Camerata
  module Serializable
    class Member
      attr_accessor :attributes

      def initialize(enumerable, attributes:)
        @enumerable = enumerable.is_a? Enumerable ? enumerable.first : enumerable
        @attributes = attributes
      end
    end
  end
end
