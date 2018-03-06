class Carro < ApplicationRecord
  belongs_to :patio

  validates :patio,
            :fabricante,
            :ano,
            :modelo,
            :ano,
            :anoModelo, presence: true

  def to_s
    "#{self.fabricante} #{self.modelo} (#{self.ano}/#{self.anoModelo})"
  end
end
