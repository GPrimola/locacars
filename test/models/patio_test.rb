require 'test_helper'

class PatioTest < ActiveSupport::TestCase
  test "the model built by factory should be valid" do
    patio = build(:patio)
    assert patio.valid?
  end

  test "the model built by factory should have an unidade" do
    patio = build(:patio)
    assert patio.unidade.present?
  end

  test "patio without a nome should be invalid" do
    patio = build(:patio, nome: nil)
    refute patio.valid?
    assert patio.invalid?
  end

  test "patio has many carros" do
    patio = create(:patio)
    create_list(:carro, 10, patio: patio)

    assert patio.carros.any?
    assert patio.carros.count == 10
  end

  test '#to_s' do
    patio = create(:patio)
    assert patio.to_s == "#{patio.unidade.nome} #{patio.nome}"
  end
end
