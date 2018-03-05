require 'test_helper'

class CarrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unidade = create(:unidade)
    @patio = create(:patio, unidade: @unidade)
    @carro = create(:carro, patio: @patio)
  end

  test "should get index" do
    get unidade_patio_carros_url(@unidade, @patio)
    assert_response :success
  end

  test "should get new" do
    get new_unidade_patio_carro_url(@unidade, @patio)
    assert_response :success
  end

  test "should create carro" do
    assert_difference('Carro.count') do
      post unidade_patio_carros_url(@unidade, @patio), params: { carro: { ano: @carro.ano, anoModelo: @carro.anoModelo, fabricante: @carro.fabricante, modelo: @carro.modelo, nome: @carro.nome, patio_id: @carro.patio_id } }
    end

    assert_redirected_to unidade_patio_carro_url(@unidade, @patio, Carro.last)
  end

  test "should show carro" do
    get unidade_patio_carro_url(@unidade, @patio, @carro)
    assert_response :success
  end

  test "should get edit" do
    get edit_unidade_patio_carro_url(@unidade, @patio, @carro)
    assert_response :success
  end

  test "should update carro" do
    patch unidade_patio_carro_url(@unidade, @patio, @carro), params: { carro: { ano: @carro.ano, anoModelo: @carro.anoModelo, fabricante: @carro.fabricante, modelo: @carro.modelo, nome: @carro.nome, patio_id: @carro.patio_id } }
    assert_redirected_to unidade_patio_carro_url(@unidade, @patio, @carro)
  end

  test "should destroy carro" do
    assert_difference('Carro.count', -1) do
      delete unidade_patio_carro_url(@unidade, @patio, @carro)
    end

    assert_redirected_to unidade_patio_carros_url(@unidade, @patio)
  end
end
