# typed: strict
require 'active_record'
require "bundler/setup"
require "camerata"
require 'pry'

require 'simplecov'
SimpleCov.start

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  # Require example
  Dir.glob("./spec/example/app/**/*.rb").each { |file_name| require file_name }
  
  # Setup example application
  ActiveRecord::Base.logger = Logger.new(STDERR)
  ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database  => ":memory:"
  )
  require './spec/example/db/schema.rb'
end
