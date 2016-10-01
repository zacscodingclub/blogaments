require 'test_helper'

class CreateCategoriesTest < ActionDispatch::IntegrationTest
  def setup
    @category = categories(:one)
    @user = User.create(username:"bob", email: "bob@example.com", password:"password", admin: true)
  end

  test "should create category" do
    login(@user, 'password')
    # post comments_url, params: { comment: { description: @comment.description, user_id: @comment.user_id } }
    assert_difference('Category.count') do
      post categories_url, params: { category: { name: "test" } }
    end

    assert_redirected_to categories_url
    follow_redirect!
    assert_match "test", response.body
  end

  test "should not create a category" do
    login(@user, 'password')
    get new_category_path
    assert_template 'categories/new'

    assert_no_difference('Category.count') do
      post categories_url, params: { category: { name: "" } }
    end

    assert_template 'categories/new'
    assert_select 'h2.panel-title'
    assert_select 'div.panel-body'
  end
end
