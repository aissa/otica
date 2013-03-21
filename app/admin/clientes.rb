ActiveAdmin.register Cliente do
	# menu :label => "Listagem de Clientes", :parent => "Cliente"
	 #menu :label => "Cadastrar Cliente", :parent => "Cliente"
    config.per_page = 10

    #index :download_links => false do
  	#end

  	#index :download_links => false do
  #end

   index do 
    column :nome                             
    column :birth                     
    column :cpf     
    column :email       
    #column :cliente              
    default_actions                   
  end                                 

  filter :cpf
  filter :nome

  form do |f|                         
    f.inputs "Detalhes do Cliente" do    
      f.input :cliente
      f.input :nome    
      f.input :birth                  
      f.input :cpf                
      f.input :email                  
    end                               
    f.actions                         
  end            
end
