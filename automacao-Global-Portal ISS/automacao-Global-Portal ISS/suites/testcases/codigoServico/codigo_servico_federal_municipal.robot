*** Settings ***
resource  ${EXECDIR}/resources/main.robot

Test Setup     efetuar login
Test Teardown  fechar navegador

*** Test Case ***
Cenário 1: Cadastrar dados federativos e aliquotas
  [Tags]  1
  Dado que estou na tela codigo de serviço federal x municipal
  Quando insiro a unidade federativa
  E clico no municipio cadastrado
  E seleciono o codigo do servico federal
  E seleciono o codigo do servico municipal
  E digito uma aliquota
  E clico no botao salvar
  Então vejo a mensagem codigo do serviço salvo com sucesso    

Cenário 2: Editar codigo do serviço federal
  [Tags]  2
  Dado que estou na tela codigo de serviço federal x municipal
  Quando clico no botao editar
  E seleciono uma nova UF
  E seleciono um novo municipio
  E seleciono um novo codigo federal
  E digito um novo codigo municipal
  E digito uma nova aliquota
  E clico no botao salvar edicao
  Então vejo a mensagem codigo do serviço alterado com sucesso      