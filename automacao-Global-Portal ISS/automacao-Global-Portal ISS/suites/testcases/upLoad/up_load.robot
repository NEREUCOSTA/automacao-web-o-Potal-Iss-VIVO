*** Settings ***
resource  ${EXECDIR}/resources/main.robot

Test Setup     efetuar login
Test Teardown  fechar navegador

*** Test Case ***
Cenário 1: Acessar a pagina upload arquivo
  [Tags]  1  
  Dado que estou na pagina home
  Quando clico no menu upload arquivo
  Então vejo a pagina upload de arquivos ISS

Cenário 2: preencher os dados do fluxo de aprovacao
    [Tags]  2
  Dado que estou na pagina upload de arquivos
  Quando seleciono o botão upload
  E seleciono o tipo de arquivo
  E clico no botao salvar arquivo
  Então vejo o arquivo na tabela de importacoes
 