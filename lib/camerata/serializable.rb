# typed: false
require 'active_support/concern'

module Camerata
  # Serializes a entity
  module Serializable
    extend ActiveSupport::Concern

    class_methods do
      def attribute(name)
        @_attributes ||= {}
        @_attributes[name]
      end

      def attributes(*names)
        names.each do |name|
          attribute name
        end
      end

      def member(enumerable)
        Member.new(enumerable, attributes: @_attributes)
      end

      def collection(enumerable)
        Collection.new(enumerable, attributes: @_attributes)
      end
    end
  end
end
