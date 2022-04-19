require 'rails/generators/active_record'

module Rone
  module Generators
    class CategoryGenerator < ActiveRecord::Generators::Base
      argument :attributes, type: :array, default: [], banner: "field:type field:type"

      class_option :category_type_name, type: :string, default: :category, desc: "The name of category type"

      source_root File.expand_path('templates', __dir__)
      desc "This is code that runs"
      def code_that_runs
        migration_template 'category_migration.rb', "#{migration_path}/add_category_to_#{table_name}.rb"
      end

      def migration_path
        db_migrate_path
      end

      def category_type_name
        name = options[:category_type_name]
        ":#{name}"
      end
    end
  end
end
