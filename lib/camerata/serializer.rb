# typed: false

require 'yajl'

module Camerata
  class Serializer

    def initialize(encoder: nil)
      @encoder = encoder || Yajl::Encoder.new
      @middleware_list = []
    end

    def register(&middleware)
      @middleware_list << middleware
    end

    def marshall(enumerable)
      enumerable.map do |record|
        payload = {}
        @middleware_list.each do |middleware|
          payload = middleware.call(record, payload)
        end
        payload
      end
    end
  end
end
