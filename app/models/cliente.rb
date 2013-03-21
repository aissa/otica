class Cliente < ActiveRecord::Base

	has_many :vendas
	#self.primary_key = :cliente_id

  attr_accessible :cliente_id,
  		:cliente,
  		:birth, 
  		:cpf, 
  		:nome, 
  		:email



  validates :cpf, :presence => true, :uniqueness => { :case_sensitive => false }

#def to_s
 #	"#{nome}"
  #end

	def to_s
		"#{id} - #{nome}" 
	end

end
