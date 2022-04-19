ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../../../Gemfile", __dir__)
puts ENV["BUNDLE_GEMFILE"]

require "bundler/setup" # Set up gems listed in the Gemfile.
#require "bootsnap/setup" # Speed up boot time by caching expensive operations.
