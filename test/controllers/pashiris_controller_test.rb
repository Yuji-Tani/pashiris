require 'test_helper'

class PashirisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pashiri = pashiris(:one)
  end

  test "should get index" do
    get pashiris_url
    assert_response :success
  end

  test "should get new" do
    get new_pashiri_url
    assert_response :success
  end

  test "should create pashiri" do
    assert_difference('Pashiri.count') do
      post pashiris_url, params: { pashiri: { iraisha: @pashiri.iraisha, name: @pashiri.name } }
    end

    assert_redirected_to pashiri_url(Pashiri.last)
  end

  test "should show pashiri" do
    get pashiri_url(@pashiri)
    assert_response :success
  end

  test "should get edit" do
    get edit_pashiri_url(@pashiri)
    assert_response :success
  end

  test "should update pashiri" do
    patch pashiri_url(@pashiri), params: { pashiri: { iraisha: @pashiri.iraisha, name: @pashiri.name } }
    assert_redirected_to pashiri_url(@pashiri)
  end

  test "should destroy pashiri" do
    assert_difference('Pashiri.count', -1) do
      delete pashiri_url(@pashiri)
    end

    assert_redirected_to pashiris_url
  end
end
