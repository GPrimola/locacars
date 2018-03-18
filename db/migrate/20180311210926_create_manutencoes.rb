class CreateManutencoes < ActiveRecord::Migration[5.1]
  def change
    create_table :manutencoes do |t|
      t.references :carro, foreign_key: true
      t.date :data
      t.string :mecanico

      t.timestamps
    end
  end
end
