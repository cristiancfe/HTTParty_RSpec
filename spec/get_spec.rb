
describe 'fazer uma requisição',:teste_de_requisicao do
  it 'get' do
  # se não usar o modulo pode chamar a url assim 
  #@primeira_opcao = HTTParty.get('https://api-de-tarefas.herokuapp.com/contacts/2500')
  #puts @primeira_opcao  

  
  @melhor_opcao = Contato.get('/contacts/2502')
  puts @melhor_opcao
  end  
end
