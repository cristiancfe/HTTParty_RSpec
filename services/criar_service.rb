module Criar
  include HTTParty
  #url_base de contatos
  base_uri CONFIG['url_padrao']
  #opcoes do meu service
  format :json
end