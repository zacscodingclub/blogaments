require 'test_helper'

class ListCategoriesTest < ActionDispatch::IntegrationTest
  def setup
    @category_one = category(:one)
    @category_two = category(:two)
  end
end
