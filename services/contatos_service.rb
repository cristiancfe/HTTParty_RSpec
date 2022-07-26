module Contato
  include HTTParty
  #url_base de contatos
  base_uri CONFIG['url_padrao']
  #opcoes do meu service
  format :json
  headers Accept: 'application/vnd.tasksmanager.v2',
                  'Content-Type': 'application/json'
end