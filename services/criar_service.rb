module Criar
  include HTTParty
  #url_base de contatos
  base_uri 'https://api-de-tarefas.herokuapp.com'
  #opcoes do meu service
  format :json
end