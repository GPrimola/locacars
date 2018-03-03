require 'test_helper'

class PatiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unidade = create(:unidade)
    @patio = create(:patio, unidade: @unidade)
  end

  test "should get index" do
    get unidade_patios_url @unidade
    assert_response :success
  end

  test "should get new" do
    get new_unidade_patio_url @unidade
    assert_response :success
  end

  test "should create patio" do
    new_patio = build(:patio)
    assert_difference('Patio.count') do
      post unidade_patios_url(@unidade), params: { patio: { nome: new_patio.nome } }
    end

    assert_redirected_to unidade_patio_url(@unidade, Patio.last)
  end

  test "should show patio" do
    get unidade_patio_url(@unidade, @patio)
    assert_response :success
  end

  test "should get edit" do
    get edit_unidade_patio_url(@unidade, @patio)
    assert_response :success
  end

  test "should update patio" do
    patch unidade_patio_url(@unidade, @patio), params: { patio: { nome: 'novo nome' } }
    assert_redirected_to unidade_patio_url(@unidade, @patio)
  end

  test "should destroy patio" do
    assert_difference('Patio.count', -1) do
      delete unidade_patio_url(@unidade, @patio)
    end

    assert_redirected_to unidade_patios_url(@unidade)
  end
end
