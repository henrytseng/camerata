# frozen_string_literal: true
# typed: false

require 'active_support/concern'

module Camerata
  module TransformLayer
    extend ActiveSupport::Concern

    class_methods do 
      # Register a transformation hook
      def add_hook(observable_name, callback)
        @middlewares ||= {}
        @middlewares[observable_name] ||= []
        @middlewares[observable_name] << callback
      end
      
      # Process all middleware hooks
      def process_with(observable_name, payload: {})
        if @middlewares[observable_name].present?
          @middlewares[observable_name].each do |middleware|
            payload = middleware.call(payload)
          end
        end
        payload
      end
    end
  end
end
