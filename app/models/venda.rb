class Venda < ActiveRecord::Base
	belongs_to :cliente
	self.primary_key = :id

  attr_accessible :parcelas, 
  		:cliente_id, 
  		:nome


end