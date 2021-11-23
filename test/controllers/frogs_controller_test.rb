require "test_helper"

class FrogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @frog = frogs(:one)
  end

  test "should get index" do
    get frogs_url
    assert_response :success
  end

  test "should get new" do
    get new_frog_url
    assert_response :success
  end

  test "should create frog" do
    assert_difference('Frog.count') do
      post frogs_url, params: { frog: { name: @frog.name } }
    end

    assert_redirected_to frog_url(Frog.last)
  end

  test "should show frog" do
    get frog_url(@frog)
    assert_response :success
  end

  test "should get edit" do
    get edit_frog_url(@frog)
    assert_response :success
  end

  test "should update frog" do
    patch frog_url(@frog), params: { frog: { name: @frog.name } }
    assert_redirected_to frog_url(@frog)
  end

  test "should destroy frog" do
    assert_difference('Frog.count', -1) do
      delete frog_url(@frog)
    end

    assert_redirected_to frogs_url
  end
end
