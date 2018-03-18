require 'test_helper'

class ManutencaoTest < ActiveSupport::TestCase
  test "the model built by factory should be valid" do
    manutencao = FactoryBot.create(:manutencao)
    assert manutencao.carro.present?
    assert manutencao.data.present?
    assert manutencao.mecanico.present?
    assert manutencao.valid?
  end
end
