require 'rails/generators'

module Rone
  module Generators
    class CategorizeGenerator < Rails::Generators::Base
      def code_that_runs
        puts "hi"
      end
    end
  end
end
