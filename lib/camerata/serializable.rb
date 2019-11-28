# frozen_string_literal: true
# typed: false

require 'yajl'
require 'camerata/middleware/transform_layer'
require 'active_support/concern'

module Camerata
  module Serializable
    extend ActiveSupport::Concern
    include TransformLayer

    included do
      # Use strings for identifiers by default
      id { |record| record.merge(id: "#{record[:id]}") }
    end
    
    class_methods do
      def encoder_method()
        @encoder_method ||= Yajl::Encoder.new
      end

      def id(&block)
        add_hook(:id, block)
      end
  
      # Adds custom record type - otherwise record type is derived
      def record_type(type_name=nil, &block)
        if type_name.nil?
          add_hook(:record_type, ->(record) { type_name })
        else
          add_hook(:record_type, block)
        end
      end

      # Adds an attribute to response payload
      def attribute(attr_name, &block)
        @attributes ||= {}
        block = ->{  } unless block_given?
        
      end

      # Sets up attributes
      def attributes(*attrs, &block)
        add_hook(:attributes, ->(record) { block.call(record, **params) })
      end

      # Adds relationships
      def relationships(&block)
        add_hook(:relationships, block)
      end
  
      # Adds additional custom links
      def links(&block)
        add_hook(:links, block)
      end
  
      # Maps a set of records to a response
      def transform(enumerable)
        

        enumerable.map do |record|
          record_hash = record.attributes

          {
            id: process_with(:id, record_hash),
            type: process_with(:type, record_hash),
            attributes: process_with(:attributes, record_hash),
            relationships: process_with(:relationships, record_hash),
            links: process_with(:links, record_hash)
          }
        end
      end
    end
  end
end
