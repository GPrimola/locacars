class Manutencao < ApplicationRecord
  belongs_to :carro

  validates :carro, :data, :mecanico, presence: true
end
