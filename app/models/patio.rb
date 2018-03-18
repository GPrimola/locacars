class Patio < ApplicationRecord
  belongs_to :unidade
  has_many :carros
  validates :nome, presence: true

  def to_s
    "#{self.unidade.nome} #{self.nome}"
  end
end
