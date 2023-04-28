*** Settings ***
Library    SeleniumLibrary
Library    String
resource  ../../../resources/main.robot
resource  ../../../resources/data/costumer.robot
resource  ../../../resources/pages/shared/setup_teardown.robot

*** Variables ***
&{fluxo}

...  tela_fluxo_operacoes=//span[contains(.,'Manual')]
...  selecione_filtro=//input[contains(@data-filter-autocomplete,'true')]
...  btn_pesquisar=//span[contains(@class,'fad fa-search')]
...  resultado_filtro=//div[@class='dx-datagrid-content']


*** Keywords ***

vejo a pagina fluxo de aprovacoes
    Wait Until Element Is Visible   ${fluxo.tela_fluxo_operacoes}  5s

estou na pagina fluxo de aprovacoes
    clico no menu fluxo de aprovacoes
    vejo a pagina fluxo de aprovacoes

seleciono o campo filtro
    Wait Until Element Is Visible   ${fluxo.selecione_filtro} 
    Click Element                   ${fluxo.selecione_filtro}

digito os dados obrigatorios
    Wait Until Element Is Enabled   ${fluxo.selecione_filtro}
    Click Element                   ${fluxo.selecione_filtro}
    Sleep  5s
    Press Keys                      ${fluxo.selecione_filtro}  Usuario
    Press Keys                      ${fluxo.selecione_filtro}  ENTER
    Wait Until Element Is Enabled   ${fluxo.selecione_filtro}
    Input Text                      ${fluxo.selecione_filtro}  1

clico no botao pesquisar 
    Wait Until Element Is Visible   ${fluxo.btn_pesquisar} 
    Click Element                   ${fluxo.btn_pesquisar}

vejo os resultados do filtro    
    Wait Until Element Is Enabled   ${fluxo.resultado_filtro}



