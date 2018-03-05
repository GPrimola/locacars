class CreateCarros < ActiveRecord::Migration[5.1]
  def change
    create_table :carros do |t|
      t.references :patio, foreign_key: true
      t.string :fabricante
      t.string :nome
      t.string :modelo
      t.integer :ano
      t.integer :anoModelo

      t.timestamps
    end
  end
end
