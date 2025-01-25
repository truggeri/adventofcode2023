require 'bundler/setup'
require 'simplecov'

SimpleCov.formatters = SimpleCov::Formatter::MultiFormatter.new([SimpleCov::Formatter::HTMLFormatter])
SimpleCov.start

RSpec.configure do |config|
  config.example_status_persistence_file_path = '.rspec_status'

  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

def load_fixture(file)
  File.read("spec/fixtures/#{file}.txt")
end
