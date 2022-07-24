describe 'fazer requisicoes',:teste_delete do
  it 'deletar contato' do
     Contato.delete('/contacts/2502')    
  end  
end