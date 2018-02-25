class CreateUnidades < ActiveRecord::Migration[5.1]
  def change
    create_table :unidades do |t|
      t.string :nome
      t.float :lat
      t.float :long
      t.integer :totalCarros

      t.timestamps
    end
  end
end
