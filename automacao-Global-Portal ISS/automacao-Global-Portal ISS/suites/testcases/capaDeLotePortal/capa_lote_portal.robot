*** Settings ***
resource  ${EXECDIR}/resources/main.robot

Test Setup     efetuar login
Test Teardown  fechar navegador

*** Test Case ***
Cenário 1: Acessar a pagina capa de lote portal
  [Tags]  1  
  Dado que estou na pagina home
  Quando clico no menu capa de lote portal
  Então vejo a pagina exportacao bases

Cenário 2: pagina exportacao bases
  [Tags]  capa  regressivo
  Dado que estou na pagina exportacao bases
  Quando digito a data inicial
  E digito a data final
  E clico no botao filtrar
  Então vejo o resultado do filtro