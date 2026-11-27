require "test_helper"

class RubytalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rubytale = rubytales(:one)
  end

  test "should get index" do
    get rubytales_url
    assert_response :success
  end

  test "should get new" do
    get new_rubytale_url
    assert_response :success
  end

  test "should create rubytale" do
    assert_difference("Rubytale.count") do
      post rubytales_url, params: { rubytale: { becomestring: @rubytale.becomestring, person_id: @rubytale.person_id, region_id: @rubytale.region_id, title: @rubytale.title } }
    end

    assert_redirected_to rubytale_url(Rubytale.last)
  end

  test "should show rubytale" do
    get rubytale_url(@rubytale)
    assert_response :success
  end

  test "should get edit" do
    get edit_rubytale_url(@rubytale)
    assert_response :success
  end

  test "should update rubytale" do
    patch rubytale_url(@rubytale), params: { rubytale: { becomestring: @rubytale.becomestring, person_id: @rubytale.person_id, region_id: @rubytale.region_id, title: @rubytale.title } }
    assert_redirected_to rubytale_url(@rubytale)
  end

  test "should destroy rubytale" do
    assert_difference("Rubytale.count", -1) do
      delete rubytale_url(@rubytale)
    end

    assert_redirected_to rubytales_url
  end
end
