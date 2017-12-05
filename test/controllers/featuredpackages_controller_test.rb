require 'test_helper'

class FeaturedpackagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @featuredpackage = featuredpackages(:one)
  end

  test "should get index" do
    get featuredpackages_url
    assert_response :success
  end

  test "should get new" do
    get new_featuredpackage_url
    assert_response :success
  end

  test "should create featuredpackage" do
    assert_difference('Featuredpackage.count') do
      post featuredpackages_url, params: { featuredpackage: { coins_required: @featuredpackage.coins_required, days: @featuredpackage.days, is_active: @featuredpackage.is_active } }
    end

    assert_redirected_to featuredpackage_url(Featuredpackage.last)
  end

  test "should show featuredpackage" do
    get featuredpackage_url(@featuredpackage)
    assert_response :success
  end

  test "should get edit" do
    get edit_featuredpackage_url(@featuredpackage)
    assert_response :success
  end

  test "should update featuredpackage" do
    patch featuredpackage_url(@featuredpackage), params: { featuredpackage: { coins_required: @featuredpackage.coins_required, days: @featuredpackage.days, is_active: @featuredpackage.is_active } }
    assert_redirected_to featuredpackage_url(@featuredpackage)
  end

  test "should destroy featuredpackage" do
    assert_difference('Featuredpackage.count', -1) do
      delete featuredpackage_url(@featuredpackage)
    end

    assert_redirected_to featuredpackages_url
  end
end
