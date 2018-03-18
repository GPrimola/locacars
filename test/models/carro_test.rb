require 'test_helper'

class CarroTest < ActiveSupport::TestCase
  test 'the model built by factory must be valid' do
    carro = build(:carro)
    assert carro.fabricante.present?
    assert carro.modelo.present?
    assert carro.ano.present?
    assert carro.anoModelo.present?
    assert carro.valid?
  end

  test 'carro should have many manutencoes' do
    carro = create(:carro)
    create_list(:manutencao, 5, carro: carro)

    assert carro.respond_to? :manutencoes
    assert carro.manutencoes.count == 5
  end

  test '#to_s' do
    carro = build(:carro)
    assert carro.to_s == "#{carro.fabricante} #{carro.modelo} (#{carro.ano}/#{carro.anoModelo})"
  end
end
