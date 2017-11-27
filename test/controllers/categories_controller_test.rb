require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
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

  test "should create category" do
    assert_difference('Category.count') do
      post categories_url, params: { category: { category_title: @category.category_title, coins_required: @category.coins_required, free_listing_allowed: @category.free_listing_allowed, free_month_duration: @category.free_month_duration, is_active: @category.is_active, is_restricted: @category.is_restricted, paid_month_duration: @category.paid_month_duration, parent_id: @category.parent_id } }
    end

    assert_redirected_to category_url(Category.last)
  end

  test "should show category" do
    get category_url(@category)
    assert_response :success
  end

  test "should get edit" do
    get edit_category_url(@category)
    assert_response :success
  end

  test "should update category" do
    patch category_url(@category), params: { category: { category_title: @category.category_title, coins_required: @category.coins_required, free_listing_allowed: @category.free_listing_allowed, free_month_duration: @category.free_month_duration, is_active: @category.is_active, is_restricted: @category.is_restricted, paid_month_duration: @category.paid_month_duration, parent_id: @category.parent_id } }
    assert_redirected_to category_url(@category)
  end

  test "should destroy category" do
    assert_difference('Category.count', -1) do
      delete category_url(@category)
    end

    assert_redirected_to categories_url
  end
end
