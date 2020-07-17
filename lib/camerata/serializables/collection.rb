module Camerata
  module Serializable
    class Collection
      attr_accessor :attributes
      include Enumerable

      def initialize(enumerable, attributes:)
        @enumerable = enumerable
        @attributes = attributes
      end

      def each
        collectable = @enumerable.find_each if @enumerable.respond_to? :find_each
        collectable ||= @enumerable.each if @enumerable.respond_to? :each
        if block_given?
          collectable.each do |i|
            yield i
          end
        end
        collectable
      end
    end
  end
end
