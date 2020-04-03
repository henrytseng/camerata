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

  # Require example(s)
  Dir.glob("./spec/examples/**/*.rb").each { |file_name| require file_name }
end
