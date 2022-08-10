require "test_helper"

class VinoCepasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vino_cepa = vino_cepas(:one)
  end

  test "should get index" do
    get vino_cepas_url
    assert_response :success
  end

  test "should get new" do
    get new_vino_cepa_url
    assert_response :success
  end

  test "should create vino_cepa" do
    assert_difference('VinoCepa.count') do
      post vino_cepas_url, params: { vino_cepa: {  } }
    end

    assert_redirected_to vino_cepa_url(VinoCepa.last)
  end

  test "should show vino_cepa" do
    get vino_cepa_url(@vino_cepa)
    assert_response :success
  end

  test "should get edit" do
    get edit_vino_cepa_url(@vino_cepa)
    assert_response :success
  end

  test "should update vino_cepa" do
    patch vino_cepa_url(@vino_cepa), params: { vino_cepa: {  } }
    assert_redirected_to vino_cepa_url(@vino_cepa)
  end

  test "should destroy vino_cepa" do
    assert_difference('VinoCepa.count', -1) do
      delete vino_cepa_url(@vino_cepa)
    end

    assert_redirected_to vino_cepas_url
  end
end
