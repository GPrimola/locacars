class Unidade < ApplicationRecord
  has_many :patios

  def to_s
    nome
  end
end
