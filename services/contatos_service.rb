module Contato
  include HTTParty
  #url_base de contatos
  base_uri 'https://api-de-tarefas.herokuapp.com'
  #opcoes do meu service
  format :json
  headers Accept: 'application/vnd.tasksmanager.v2',
                  'Content-Type': 'application/json'
end