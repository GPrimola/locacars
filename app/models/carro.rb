class Carro < ApplicationRecord
  belongs_to :patio

  validates :patio,
            :fabricante,
            :nome,
            :ano,
            :modelo,
            :ano,
            :anoModelo, presence: true

  def to_s
    "#{self.fabricante} #{self.nome} #{self.modelo} (#{self.ano}/#{self.anoModelo})"
  end
end
