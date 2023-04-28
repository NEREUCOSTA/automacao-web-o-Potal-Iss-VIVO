*** Settings ***
resource  ${EXECDIR}/resources/main.robot

Test Setup     efetuar login
Test Teardown  fechar navegador

*** Test Case ***
Cenário 1: Acessar a pagina fluxo de aprovacao
  [Tags]  1  
  Dado que estou na pagina home
  Quando clico no menu fluxo de aprovacoes
  Então vejo a pagina fluxo de aprovacoes

Cenário 2: preencher os dados do fluxo de aprovacao
    [Tags]  fluxo  regressivo
  Dado que estou na pagina fluxo de aprovacoes
  Quando seleciono o campo filtro
  E digito os dados obrigatorios
  Sleep  5s
  E clico no botao pesquisar
  Então vejo os resultados do filtro
  Sleep  5s