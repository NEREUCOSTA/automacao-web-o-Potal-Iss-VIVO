*** Settings ***
Library    SeleniumLibrary
Library    String
resource  ${EXECDIR}/resources/main.robot
resource  ${EXECDIR}/resources/data/costumer.robot
resource  ${EXECDIR}/resources/pages/shared/setup_teardown.robot


*** Variables ***
&{cadastro_prestador}

...  menu_cadastro_prestador=//figcaption[contains(.,'CADASTRAR PRESTADOR')]
...  tela_cadastro_prestador=//legend[contains(.,'Cadastro de Prestador')]
...  nome_fantasia=//input[@id="NomeFantasia"]
...  razao_social=//input[@id="RazaoSocial"]
...  cnpj=//input[@id="NumeroDocCliente"]
...  logradouro=//input[@id="Logradouro"]
...  numero_logradouro=//input[@id="Numero"]
...  bairro=//input[@id="Bairro"]
...  cep=//input[@id="Cep"]
...  uf=//span[contains(@id,'select2-IdUF-container')]
...  selecionar_uf=//li[@class='select2-results__option'][contains(.,'AC')]
...  municipio=//span[contains(@aria-labelledby,'select2-Municipio-container')]
...  selecionar_municipio=//li[@class='select2-results__option'][contains(.,'ACRELANDIA')]
...  campo_inscrição_estadual=//input[@id="InscricaoEstadual"]
...  campo_inscrição_municipal=//input[@id="InscricaoMunicipal"]
...  campo_filial_sap=//span[@aria-labelledby='select2-IdFilialSAP-container']
...  selecionar_filial=//li[@class='select2-results__option'][contains(.,'0001')]
...  aliquota_pis=//input[@id="AliquotaPis"]
...  aliquota_confins=//input[@id="AliquotaCofins"]
...  mensagem_prestador_salvo=//div[@class='toast-message'][contains(.,'Prestador salvo com sucesso')]


*** Keywords ***

vejo a tela cadastro prestador     
    Wait Until Element Is Visible  ${cadastro_prestador.tela_cadastro_prestador}

digito os dados nos campos obrigatorios
    Wait Until Element Is Visible  ${cadastro_prestador.nome_fantasia}
    Input Text                     ${cadastro_prestador.nome_fantasia}  global one
    Wait Until Element Is Visible  ${cadastro_prestador.razao_social}
    Input Text                     ${cadastro_prestador.razao_social}  vivo
    Input Text                     ${cadastro_prestador.cnpj}  58.263.653/0001-43
    Sleep  5s
    Input Text                     ${cadastro_prestador.logradouro}  Qna 28
    Input Text                     ${cadastro_prestador.numero_logradouro}  13
    Input Text                     ${cadastro_prestador.bairro}  Taguatinga
    Sleep  5s
    Input Text                     ${cadastro_prestador.cep}  70110280
    Wait Until Element Is Visible  ${cadastro_prestador.uf}
    Click Element                  ${cadastro_prestador.uf}
    Click Element                  ${cadastro_prestador.selecionar_uf}
    Sleep  5s
    Wait Until Element Is Visible  ${cadastro_prestador.municipio}
    Click Element                  ${cadastro_prestador.municipio}
    Click Element                  ${cadastro_prestador.selecionar_municipio}
    Wait Until Element Is Visible  ${cadastro_prestador.campo_inscrição_estadual}
    Input Text                     ${cadastro_prestador.campo_inscrição_estadual}  12345
    Sleep  5s
    Wait Until Element Is Visible  ${cadastro_prestador.campo_inscrição_municipal}
    Input Text                     ${cadastro_prestador.campo_inscrição_municipal}  1234567
    Wait Until Element Is Visible  ${cadastro_prestador.campo_filial_sap}
    Click Element                  ${cadastro_prestador.campo_filial_sap} 
    Click Element                  ${cadastro_prestador.selecionar_filial} 
    Wait Until Element Is Visible  ${cadastro_prestador.aliquota_pis}
    Input Text                     ${cadastro_prestador.aliquota_pis}  12
    Wait Until Element Is Visible  ${cadastro_prestador.aliquota_confins}
    Input Text                     ${cadastro_prestador.aliquota_confins}  16

vejo a tela prestador salvo com sucesso    
    Wait Until Element Is Visible   ${cadastro_prestador.mensagem_prestador_salvo}             








