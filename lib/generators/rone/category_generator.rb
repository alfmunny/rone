require 'rails/generators'

module Rone
  module Generators
    class CategoryGenerator < Rails::Generators::Base
      source_root File.expand_path('templates', __dir__)
      desc "This is code that runs"
      def code_that_runs
        puts "hi"
      end
    end
  end
end
