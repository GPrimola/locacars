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

  test 'unidade should have many patios' do
    unidade = create(:unidade)
    assert unidade.respond_to? :patios
    assert unidade.patios.empty?

    create_list(:patio, 5, unidade: unidade)
    assert unidade.patios.any?
    assert unidade.patios.count == 5
  end
end
