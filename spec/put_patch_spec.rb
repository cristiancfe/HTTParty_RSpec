describe 'fazer requisicao', :teste_put_patch do
  context 'alterar dados com' do
    it 'put' do
      @body_put = {
        "id": 2505,
        "name": "Cristian",
        "last_name": "Fabiano",
        "email": "22@gmail.com",
        "age": "50",
        "phone": "21984759575",
        "address": "Rua aprender",
        "state": "Rio Grande do Sul",
        "city": "Alvorada",
      }.to_json

      @requisicao_put = Contato.put('/contacts/2505', body: @body_put)
      puts @requisicao_put
    end

    it 'patch' do
      @body_patch = {
          "id": 2506,
          "email": "50@gmail.com",
      }.to_json

      @requisicao_patch = Contato.patch('/contacts/2506', body: @body_patch)
      puts @requisicao_patch
    end
  end  
end
