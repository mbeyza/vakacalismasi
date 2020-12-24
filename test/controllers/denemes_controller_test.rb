require "test_helper"

class DenemesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deneme = denemes(:one)
  end

  test "should get index" do
    get denemes_url
    assert_response :success
  end

  test "should get new" do
    get new_deneme_url
    assert_response :success
  end

  test "should create deneme" do
    assert_difference('Deneme.count') do
      post denemes_url, params: { deneme: { AD: @deneme.AD, ADRES: @deneme.ADRES, EMAİL: @deneme.EMAİL, SOYAD: @deneme.SOYAD, YAS: @deneme.YAS } }
    end

    assert_redirected_to deneme_url(Deneme.last)
  end

  test "should show deneme" do
    get deneme_url(@deneme)
    assert_response :success
  end

  test "should get edit" do
    get edit_deneme_url(@deneme)
    assert_response :success
  end

  test "should update deneme" do
    patch deneme_url(@deneme), params: { deneme: { AD: @deneme.AD, ADRES: @deneme.ADRES, EMAİL: @deneme.EMAİL, SOYAD: @deneme.SOYAD, YAS: @deneme.YAS } }
    assert_redirected_to deneme_url(@deneme)
  end

  test "should destroy deneme" do
    assert_difference('Deneme.count', -1) do
      delete deneme_url(@deneme)
    end

    assert_redirected_to denemes_url
  end
end
