describe 'fazer uma requisição',:teste_validando_resposta do
  it 'get' do   
  @resposta = Contato.get('/contacts/2500')
  puts 'imprimindo status code e body' 
  puts @resposta.code
  expect(@resposta.code).to eq 200
  puts @resposta.body

  #converter body de string para json e validando campos do body  

  expect(@resposta.parsed_response['data']['attributes']['name']).to eq 'Cristian'
  expect(@resposta.parsed_response['data']['attributes']['last-name']).to eq 'Eisenhut'
  expect(@resposta.parsed_response['data']['attributes']['age']).to eq 49
  expect(@resposta.parsed_response['data']['attributes']['email']).to eq 'eisenhut@gmail.com'
  end  

  it 'get' do   
  @resposta = Contato.get('/contacts/2500') 

  #imprimindo resultados do body 
  puts 'imprimindo e validando campos do body'
  puts @resposta.parsed_response['data']['attributes']['name']
  puts @resposta.parsed_response['data']['attributes']['last-name']
  puts @resposta.parsed_response['data']['attributes']['age']
  puts @resposta.parsed_response['data']['attributes']['email']
  
  #validando campos do body

  expect(@resposta.parsed_response['data']['attributes']['name']).to eq 'Cristian'
  expect(@resposta.parsed_response['data']['attributes']['last-name']).to eq 'Eisenhut'
  expect(@resposta.parsed_response['data']['attributes']['age']).to eq 49
  expect(@resposta.parsed_response['data']['attributes']['email']).to eq 'eisenhut@gmail.com'
  end
end