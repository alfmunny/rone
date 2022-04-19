require 'test_helper'

class CategorizableTest < RoneTest
  def setup
    @post_sell = posts(:post_sell)
  end

  test "validation" do
    @post_sell.category = ''
    refute @post_sell.valid?
    @post_sell.category = "article"
    refute @post_sell.valid?
    assert_includes @post_sell.errors[:category], 'article is not a valid category'
    Post.create!(title: "Hello world", content: "HHAHA", category: :sell)
    Post.create!(title: "Hello world", content: "HHAHA", category: :sell)
    Post.create!(title: "Hello world", content: "HHAHA", category: :sell)
    puts Post.all.count
  end

  test "categorizable_on" do
    assert_equal Post.category_list, %w(sell rent)
    assert_equal @post_sell.categorized_sell?, true
    assert_equal @post_sell.categorized_rent?, false
  end

end
