class ApplicationController < ActionController::Base
  protect_from_forgery
  def carrega_nome 
  	nome = Cliente.find(:all).collect  { |e| [e.nome, e.id] } 
  end 	
end
