class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.date :data_entrega
      t.string :descricao
      t.decimal :preco
      t.integer :quantidade
      t.string :status
      t.date :validade
      t.timestamps
    end
  end
end
