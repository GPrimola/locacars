require 'test_helper'

class ManutencoesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manutencao = create(:manutencao)
    @carro = @manutencao.carro
    @patio = @carro.patio
    @unidade = @patio.unidade
  end

  test "should get index" do
    get unidade_patio_carro_manutencoes_url(@unidade, @patio, @carro)
    assert_response :success
  end

  test "should get new" do
    get new_unidade_patio_carro_manutencao_url(@unidade, @patio, @carro)
    assert_response :success
  end

  test "should create manutencao" do
    assert_difference('Manutencao.count') do
      post unidade_patio_carro_manutencoes_url(@unidade, @patio, @carro), params: { manutencao: { carro_id: @manutencao.carro_id, data: @manutencao.data, mecanico: @manutencao.mecanico } }
    end

    assert_redirected_to unidade_patio_carro_manutencao_url(@unidade, @patio, @carro, Manutencao.last)
  end

  test "should show manutencao" do
    get unidade_patio_carro_manutencao_url(@unidade, @patio, @carro, @manutencao)
    assert_response :success
  end

  test "should get edit" do
    get edit_unidade_patio_carro_manutencao_url(@unidade, @patio, @carro, @manutencao)
    assert_response :success
  end

  test "should update manutencao" do
    patch unidade_patio_carro_manutencao_url(@unidade, @patio, @carro, @manutencao), params: { manutencao: { carro_id: @manutencao.carro_id, data: @manutencao.data, mecanico: @manutencao.mecanico } }
    assert_redirected_to unidade_patio_carro_manutencao_url(@unidade, @patio, @carro, @manutencao)
  end

  test "should destroy manutencao" do
    assert_difference('Manutencao.count', -1) do
      delete unidade_patio_carro_manutencao_url(@unidade, @patio, @carro, @manutencao)
    end

    assert_redirected_to unidade_patio_carro_manutencoes_url(@unidade, @patio, @carro)
  end
end
