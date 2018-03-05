class Patio < ApplicationRecord
  belongs_to :unidade
  has_many :carros
  validates :nome, presence: true
end
