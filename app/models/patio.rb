class Patio < ApplicationRecord
  belongs_to :unidade
  validates :nome, presence: true
end
