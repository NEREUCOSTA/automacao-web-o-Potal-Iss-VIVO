*** Settings ***
resource  ${EXECDIR}/resources/main.robot

Suite Setup      abrir site
Suite Teardown   fechar navegador

*** Test Case ***

Cenário 1: Realizar Login no Portal de Faturamento
  [Tags]  1  smoke
  Dado que estou na pagina do portal de faturamento
  Quando digito o login do usuario
  E digito a senha
  E chamo o metodo enviar
  Então vejo a pagina home
 