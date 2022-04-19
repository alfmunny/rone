require 'test_helper'

class CategoryGeneratorTest < Rails::Generators::TestCase
  tests Rone::Generators::CategoryGenerator
  destination File.expand_path("../../tmp", __FILE__)
  setup :prepare_destination
  #teardown :cleanup_destination_root

  test "default category generator" do
    run_generator ["post"]
    assert_migration "db/migrate/add_category_to_posts.rb", /add_column :posts, :category/
  end

  test "category generator with given type name" do
    run_generator ["post", "--category_type_name=post_category"]
    assert_migration "db/migrate/add_category_to_posts.rb", /add_column :posts, :post_category/
  end

end
