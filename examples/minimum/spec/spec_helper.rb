# typed: strict
require 'sqlite3'
require 'active_record'
require 'bundler/setup'
require 'camerata'
require 'faker'
require 'pry'
require './examples/minimum/spec/support/factory_bot'

require 'simplecov'
SimpleCov.start

ActiveRecord::Base.logger = Logger.new('./log/test.log')

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: ':memory:'
)
ActiveRecord::Migration.maintain_test_schema!

# Load example files
require './examples/minimum/db/schema'
Dir.glob('./examples/minimum/app/**/*.rb').each { |file_name| require file_name }

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  # Load library
  Dir.glob('./lib/**/*.rb').each { |file_name| require file_name }
end
