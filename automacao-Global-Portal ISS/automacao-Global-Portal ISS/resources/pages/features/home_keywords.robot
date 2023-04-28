*** Settings ***
Library    SeleniumLibrary
resource  ${EXECDIR}/resources/main.robot
resource  ${EXECDIR}/resources/data/costumer.robot


*** Variables ***
&{home}
...  item_codigo_servico=//figcaption[contains(.,'CÓDIGO SERVIÇO')]
...  item_cadastrar_prestador=//figcaption[contains(.,'CADASTRAR PRESTADOR')]
...  item_upload=//figcaption[contains(.,'UPLOAD ARQUIVO')]
...  label_text=//p[@class='title'][contains(.,'Acesse o(s) módulo(s) abaixo:')]
...  item_fluxo_operacoes=//p[@class='text-white text-uppercase text-extra-small'][contains(.,'FLUXO DE APROVAÇÕES')]
...  menu_capa_lote=//figcaption[contains(.,'CAPA DE LOTE - PORTAL')]


*** Keywords ***
estou na pagina home
    Wait Until Element Is Visible     ${home.label_text}  10s

clico no item codigo servico
    Wait Until Element Is Enabled     ${home.item_codigo_servico}
    Click Element                     ${home.item_codigo_servico}  

clico no menu cadastrar prestador
    Wait Until Element Is Enabled     ${home.item_cadastrar_prestador}  5s
    Click Element                     ${home.item_cadastrar_prestador}

clico no menu fluxo de aprovacoes
    Wait Until Element Is Enabled     ${home.item_fluxo_operacoes}  10s
    Click Element                     ${home.item_fluxo_operacoes}

clico no menu upload arquivo 
    Wait Until Element Is Enabled     ${home.item_upload}  5s
    Click Element                     ${home.item_upload}   

clico no menu capa de lote portal
    Wait Until Element Is Enabled     ${home.menu_capa_lote}  5s
    Click Element                     ${home.menu_capa_lote}  

vejo a pagina home
    Wait Until Location Is  http://10.128.222.26/PortalISS_Homolog/Menu/Home  15s
    Wait Until Element Is Enabled  ${home.label_text}  5s