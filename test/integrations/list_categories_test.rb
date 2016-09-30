require 'test_helper'

class ListCategoriesTest < ActionDispatch::IntegrationTest
  def setup
    @category_one = categories(:one)
    @category_two = categories(:two)
  end

  test "should show categories listing" do
    get categories_path
    assert_template 'categories/index'

    assert_select "a[href=?]", category_path(@category_one), text: @category_one.name
    assert_select "a[href=?]", category_path(@category_two), text: @category_two.name
  end
end
