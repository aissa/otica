class Produto < ActiveRecord::Base
  attr_accessible :data_entrega, :descricao, :preco, :quantidade, :status, :validade
  validates :descricao, :preco, :quantidade, :presence => true

	  def preco=(preco)  

        write_attribute(:preco, preco.gsub(',', '.'))  

       end
end
