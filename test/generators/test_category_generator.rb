require 'test_helper'

class CategoryGeneratorTest < Rails::Generators::TestCase
  tests Rone::Generators::CategoryGenerator
  destination File.expand_path("../../tmp", __FILE__)
  setup :prepare_destination
  #teardown :cleanup_destination_root

  def test_category_generator
    run_generator ["my_category"]
  end
end
