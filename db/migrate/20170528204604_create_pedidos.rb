class CreatePedidos < ActiveRecord::Migration[5.1]
  def change
    create_table :pedidos do |t|
      t.integer :codigo
      t.integer :quantidade
      t.references :cliente, foreign_key: true
      t.references :produto, foreign_key: true

      t.timestamps
    end
  end
end
