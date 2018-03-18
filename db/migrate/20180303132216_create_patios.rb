class CreatePatios < ActiveRecord::Migration[5.1]
  def change
    create_table :patios do |t|
      t.references :unidade, foreign_key: true
      t.string :nome

      t.timestamps
    end
  end
end
