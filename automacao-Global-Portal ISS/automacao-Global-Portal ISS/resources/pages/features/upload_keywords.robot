*** Settings ***
Library    SeleniumLibrary
Library    String
resource  ../../../resources/main.robot
resource  ../../../resources/data/costumer.robot
resource  ../../../resources/pages/shared/setup_teardown.robot

*** Variables ***
&{upload}
...  pagina_upload=//legend[@class='legendHeader'][contains(.,'Upload de Arquivos ISS')]
...  btn_upload=//button[contains(@title,'Aprovação em Massa')]



*** Keywords ***
vejo a pagina upload de arquivos ISS
    Wait Until Element Is Visible   ${upload.pagina_upload}  5s

estou na pagina upload de arquivos
    clico no menu upload arquivo
    vejo a pagina upload de arquivos ISS

seleciono o botão upload
    Wait Until Element Is Visible   ${upload.btn_upload} 
    Click Element                   ${upload.btn_upload}  

