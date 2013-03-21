ActiveAdmin.register Produto do

	  index do 
    column :descricao                             
    column :preco                     
    column :quantidade     
    column :validade                     
    default_actions                   
  end                                 

  filter :descricao
  filter :status

  form do |f|                         
    f.inputs "Detalhes do Produto" do    
      f.input :descricao    
      f.input :quantidade  
      f.input :preco                          
      f.input :status                
      f.input :validade                  
    end                               
    f.actions                         
  end    
  
end
