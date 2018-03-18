class Carro < ApplicationRecord
  belongs_to :patio
  has_many :manutencoes, class_name: 'Manutencao'

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
