# typed: false
module Camerata
  MIME_TYPE = 'application/vnd.api+json'.freeze

  # Internal configuration
  class Configuration
    include ActiveSupport::Configurable

    config_accessor(:logger) { defined?(Rails) ? Rails.logger : Logger.new(STDOUT) }
    config_accessor(:mime_type) { MIME_TYPE }
  end

  # Setup internal configuration during initalizer
  def self.configure
    @configuration ||= Configuration.new
    yield @configuration if block_given?
    @configuration
  end
end
