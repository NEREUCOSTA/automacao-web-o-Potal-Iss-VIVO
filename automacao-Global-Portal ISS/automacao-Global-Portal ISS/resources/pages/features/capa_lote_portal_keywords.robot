*** Settings ***
Library    SeleniumLibrary
Library    String
resource  ../../../resources/main.robot
resource  ../../../resources/data/costumer.robot
resource  ../../../resources/pages/shared/setup_teardown.robot

*** Variables ***
&{capa}
...  menu_capa_lote=//legend[@class='legendHeader'][contains(.,'Exportação Bases')]
...  btn_upload=//button[contains(@title,'Aprovação em Massa')]
...  dt_inicial=//input[contains(@name,'DataInicio')]
...  dt_final=//input[contains(@name,'DataFim')]
...  btn_filtro=//button[@type='button'][contains(.,'Filtrar')]
...  grade=//div[@role='grid']


*** Keywords ***
vejo a pagina exportacao bases
    Wait Until Element Is Visible   ${capa.menu_capa_lote}  5s

estou na pagina exportacao bases
    clico no menu capa de lote portal
    vejo a pagina exportacao bases

digito a data inicial
    Wait Until Element Is Visible  ${capa.dt_inicial} 
    Input Text                     ${capa.dt_inicial}  02/01/2023

digito a data final   
    Wait Until Element Is Visible  ${capa.dt_final} 
    Input Text                     ${capa.dt_final}  27/01/2023 

clico no botao filtrar
    Wait Until Element Is Visible  ${capa.btn_filtro} 
    Click Element                  ${capa.btn_filtro} 

vejo o resultado do filtro 
    Wait Until Element Is Visible  ${capa.grade}  
    Capture Page Screenshot       
    Sleep  5s  




