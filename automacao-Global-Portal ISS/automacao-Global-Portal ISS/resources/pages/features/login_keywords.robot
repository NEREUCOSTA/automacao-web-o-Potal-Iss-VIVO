*** Settings ***
Library    SeleniumLibrary
resource  ${EXECDIR}/resources/main.robot
resource  ${EXECDIR}/resources/data/costumer.robot


*** Variables ***
&{login}
...  field_login=//input[@id="txt-login"]
...  field_password=//input[@id="txt-senha"]


*** Keywords ***
estou na pagina do portal de faturamento
    Wait Until Element Is Visible    ${login.field_login}

digito o login do usuario
    Wait Until Element Is Visible     ${login.field_login}
    Input Text  ${login.field_login}  ${cliente.user} 

digito a senha
    Wait Until Element Is Visible     ${login.field_password}
    Input Text  ${login.field_password}  ${cliente.password}   

chamo o metodo enviar
    Execute Javascript  LocalLogin.Methods.Enviar(); 
