class CreateVendas < ActiveRecord::Migration
  def change
    create_table :vendas do |t|
      t.references :clientes
      t.string :nome
      t.timestamps
    end
    add_index :vendas, :cliente
  end
end
