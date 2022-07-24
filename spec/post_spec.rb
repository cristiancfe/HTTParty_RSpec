describe 'fazer uma requisicao', :teste_post do
  it 'post' do
    @body = {      
      "name": "Cristian",
      "last_name": "Fabiano",
      "email": "cf48@gmail.com",
      "age": "48",
      "phone": "21984759575",
      "address": "Rua aprender",
      "state": "Rio Grande do Sul",
      "city": "Alvorada"
    }.to_json

    # Forma simples do HTTParty sem usar o module
    # @headers = {
    #   "Accept": 'application/vnd.tasksmanager.v2',
    #   'Content-Type': 'application/json'
    # }

    # @request = HTTParty.post('https://api-de-tarefas.herokuapp.com/contacts', body: @body, headers: @headers)   
    # puts @request

    @request = Contato.post('/contacts', body: @body)
    puts @request
  end  
end
