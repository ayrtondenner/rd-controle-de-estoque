class CreateProdutos < ActiveRecord::Migration[5.1]
  def change
    create_table :produtos do |t|
      t.integer :codigo
      t.string :nome
      t.references :fornecedor, foreign_key: true

      t.timestamps
    end
  end
end
