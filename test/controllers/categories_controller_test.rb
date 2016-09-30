require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @category = categories(:one)
  end

  test "should get index" do
    get categories_url
    assert_response :success
  end

  test "should get new" do
    get new_category_url
    assert_response :success
  end

  test "should get show" do
    get category_url(@category)
    assert_response :success
  end

  test "should create category" do
    # post comments_url, params: { comment: { description: @comment.description, user_id: @comment.user_id } }
    assert_difference('Category.count') do
      post categories_url, params: { category: { name: "test" } }
    end

    assert_redirected_to categories_url
    follow_redirect!
    assert_match "test", response.body
  end
end
