class CreateClientes < ActiveRecord::Migration[5.1]
  def change
    create_table :clientes do |t|
      t.integer :codigo
      t.string :razaoSocial
      t.string :cnpj

      t.timestamps
    end
  end
end
