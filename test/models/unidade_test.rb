require 'test_helper'

class UnidadeTest < ActiveSupport::TestCase
  test "the model's attributes built by factory should be valid" do
    unidade = build(:unidade)

    assert unidade.nome.present?
    assert unidade.lat.present?
    assert unidade.long.present?
    assert unidade.totalCarros.present?
    assert unidade.valid?
    assert unidade.save
  end
end
