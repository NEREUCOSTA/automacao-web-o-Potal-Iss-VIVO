*** Settings ***
resource  ${EXECDIR}/resources/main.robot

Test Setup     efetuar login
Test Teardown  fechar navegador

*** Test Case ***
Cenário 1: Acessar a pagina cadastrar prestador
  [Tags]  1  
  Dado que estou na pagina home
  Quando clico no menu cadastrar prestador
  Então vejo a tela cadastro prestador

Cenario 2: Realizar o cadastro do prestador
   [Tags]  2
  Dado que estou na tela cadastro prestador
  Quando clico no menu cadastrar prestador
  E digito os dados nos campos obrigatorios
  E clico no botao salvar
  Então vejo a tela prestador salvo com sucesso
