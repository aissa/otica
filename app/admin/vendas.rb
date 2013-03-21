ActiveAdmin.register Venda do

  index do                            
  	selectable_column
    column :parcelas
   	column :nome do |cliente|
   		cliente.cliente.nome
   	end
    column :cliente_id

    default_actions                   
  end                                 
  
end
