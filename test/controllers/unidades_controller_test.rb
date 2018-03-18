require 'test_helper'

class UnidadesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get unidades_url
    assert_response :success
  end

  test "should get new" do
    get new_unidade_url
    assert_response :success
  end

  test "should create unidade" do
    unidade = build(:unidade)
    assert_difference('Unidade.count') do
      post unidades_url, params: { unidade: { lat: unidade.lat, long: unidade.long, nome: unidade.nome, totalCarros: unidade.totalCarros } }
    end

    assert_redirected_to unidade_url(Unidade.last)
  end

  test "should show unidade" do
    unidade = create(:unidade)
    get unidade_url(unidade)
    assert_response :success
  end

  test "should get edit" do
    unidade = create(:unidade)
    get edit_unidade_url(unidade)
    assert_response :success
  end

  test "should update unidade" do
    unidade = create(:unidade)
    patch unidade_url(unidade), params: { unidade: { lat: unidade.lat, long: unidade.long, nome: unidade.nome, totalCarros: unidade.totalCarros } }
    assert_redirected_to unidade_url(unidade)
  end

  test "should destroy unidade" do
    unidade = create(:unidade)
    assert_difference('Unidade.count', -1) do
      delete unidade_url(unidade)
    end

    assert_redirected_to unidades_url
  end

  test 'should return empty json array when no unidade in database' do
    assert_equal Unidade.count, 0
    get unidades_url format: :json

    assert JSON.parse(response.body).empty?
  end

  test 'should return json array when it has many unidades in database' do
    unidades = create_list(:unidade, 5)
    get unidades_url format: :json

    unidades_json = JSON.parse(response.body, object_class: OpenStruct)
    assert unidades_json.any?
    assert_equal unidades_json.count, 5
    assert_equal unidades_json.first.nome, unidades.first.nome
  end

  test 'should return json object in show' do
    unidade = create(:unidade)
    get unidade_url unidade, format: :json

    unidade_json = JSON.parse(response.body, object_class: OpenStruct)
    assert_equal unidade_json.id  , unidade.id
    assert_equal unidade_json.nome, unidade.nome
    assert_equal unidade_json.lat , unidade.lat
    assert_equal unidade_json.long, unidade.long
  end
end
