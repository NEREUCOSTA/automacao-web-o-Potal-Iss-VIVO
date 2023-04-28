*** Settings ***
Library    SeleniumLibrary
Library    String
resource  ${EXECDIR}/resources/main.robot
resource  ${EXECDIR}/resources/data/costumer.robot
resource  ${EXECDIR}/resources/pages/shared/setup_teardown.robot


*** Variables ***
&{codigo_federal_municipal}

...  label_codigo_servico_federal=//legend[contains(.,'Código de Serviços Federal x Municipal')]
...  campo_uf=//span[contains(@id,'select2-UfOrigem-container')]
...  campo_uf_1=//li[@class='select2-results__option'][contains(.,'AC')]
...  campo_municipio=//span[contains(@aria-labelledby,'select2-MunicipioOrigem-container')]
...  campo_municipio_nome=//li[@class='select2-results__option'][contains(.,'ACRELANDIA')]
...  campo_codigo_federal=(//b[contains(@role,'presentation')])[3]
...  campo_selecionar_codigo_federal=//li[@class='select2-results__option select2-results__option--highlighted'][contains(.,'007')]
...  campo_codigo_municipal=//input[@id="CodigoServicoMunicipalOrigem"]
...  campo_aliquota=//input[@id="AliquotaOrigem"]
...  btn_salvar=//button[@type='button'][contains(.,'Salvar')]
...  mensagem_sucesso=(//div[contains(.,'Código de Serviço salvo com sucesso')])[3]
...  campo_editar=(//a[contains(@title,'Editar')])[1]
...  mensagem_alterada=//div[contains(@class,'toast-message')]


*** Keywords ***

vejo a tela codigo de serviço federal x municipal
    Wait Until Element Is Visible   ${codigo_federal_municipal.label_codigo_servico_federal}

estou na tela codigo de serviço federal x municipal
    clico no item codigo servico
    vejo a tela codigo de serviço federal x municipal

insiro a unidade federativa
    Wait Until Element Is Visible     ${codigo_federal_municipal.campo_uf}
    Click Element                     ${codigo_federal_municipal.campo_uf}
    Sleep  3s
    Click Element                     ${codigo_federal_municipal.campo_uf_1}

clico no municipio cadastrado
    Wait Until Element Is Visible     ${codigo_federal_municipal.campo_municipio}
    Click Element                     ${codigo_federal_municipal.campo_municipio}
    Sleep  3s
    Click Element                     ${codigo_federal_municipal.campo_municipio_nome}

seleciono o codigo do servico federal
    Wait Until Element Is Visible     ${codigo_federal_municipal.campo_codigo_federal}
    Click Element                     ${codigo_federal_municipal.campo_codigo_federal}
    Click Element                     ${codigo_federal_municipal.campo_selecionar_codigo_federal}

seleciono o codigo do servico municipal
    Wait Until Element Is Visible      ${codigo_federal_municipal.campo_codigo_municipal}
    Input Text                         ${codigo_federal_municipal.campo_codigo_municipal}  1234
    Sleep  2s 

digito uma aliquota                          
    Wait Until Element Is Visible      ${codigo_federal_municipal.campo_aliquota}
    Input Text                         ${codigo_federal_municipal.campo_aliquota}  12
    Sleep  2s

clico no botao salvar 
   Wait Until Element Is Visible      ${codigo_federal_municipal.btn_salvar}
   Click Element                      ${codigo_federal_municipal.btn_salvar}   
   Sleep  5s

vejo a mensagem codigo do serviço salvo com sucesso 
    Wait Until Element Is Visible     ${codigo_federal_municipal.mensagem_sucesso}


clico no botao editar
    Wait Until Element Is Visible     ${codigo_federal_municipal.campo_editar}
    Click Element                     ${codigo_federal_municipal.campo_editar}
    Sleep  3s
 
seleciono uma nova UF     
    Wait Until Element Is Visible     ${codigo_federal_municipal.campo_uf}
    Click Element                     ${codigo_federal_municipal.campo_uf}  
    Click Element                     ${codigo_federal_municipal.campo_uf_1}  
    Sleep  3s

seleciono um novo municipio   
    Wait Until Element Is Visible     ${codigo_federal_municipal.campo_municipio}
    Click Element                     ${codigo_federal_municipal.campo_municipio}  
    Click Element                     ${codigo_federal_municipal.campo_municipio_nome}
     Sleep  3s 

seleciono um novo codigo federal   
    Wait Until Element Is Visible     ${codigo_federal_municipal.campo_codigo_federal}
    Click Element                     ${codigo_federal_municipal.campo_codigo_federal}  
    Click Element                     ${codigo_federal_municipal.campo_selecionar_codigo_federal}

digito um novo codigo municipal 
    Wait Until Element Is Visible     ${codigo_federal_municipal.campo_codigo_municipal}
    Input Text                        ${codigo_federal_municipal.campo_codigo_municipal}  4321

digito uma nova aliquota    
    Wait Until Element Is Visible     ${codigo_federal_municipal.campo_aliquota}
    Input Text                        ${codigo_federal_municipal.campo_aliquota}  15
     Sleep  3s

clico no botao salvar edicao
    Wait Until Element Is Visible     ${codigo_federal_municipal.btn_salvar}
    Click Element                     ${codigo_federal_municipal.btn_salvar} 

vejo a mensagem codigo do serviço alterado com sucesso   
    Wait Until Element Is Visible     ${codigo_federal_municipal.mensagem_alterada}       


    