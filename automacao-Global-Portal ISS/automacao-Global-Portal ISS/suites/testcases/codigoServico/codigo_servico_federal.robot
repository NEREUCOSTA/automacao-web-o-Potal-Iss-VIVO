*** Settings ***
resource  ${EXECDIR}/resources/main.robot

Test Setup     efetuar login
Test Teardown  fechar navegador

*** Test Case ***
Cenário 1: Acessar a pagina codigo de serviços
  [Tags]  1  smoke
  Dado que estou na pagina home
  Quando clico no item codigo servico
  Então vejo a tela codigo de servico federal

Cenário 2: Cadastrar novo código federal
  [Tags]  2
  Dado que estou na tela codigo de serviço federal
  Quando clico no botão cadastrar novo codigo federal
  E digito o numero do codigo do serviço federal
  E digito a descrição do codigo do serviço federal
  E clico no botão salvar servico
  Então vejo a mensagem codigo do serviço do novo cadastro salvo com sucesso



