*** Settings ***
Library    SeleniumLibrary
Library    String
resource  ${EXECDIR}/resources/main.robot
resource  ${EXECDIR}/resources/data/costumer.robot
resource  ${EXECDIR}/resources/pages/shared/setup_teardown.robot


*** Variables ***
&{cadastro_codigo}

...  label_codigo_servico_federal=//legend[contains(.,'Cadastro de Código de Serviço Federal')]
...  btn_novo_codigo=//button[@type='button'][contains(.,'Cadastrar Novo Código Federal')]
...  campo_numero_codigo=//input[@id="NRServicoFederal"]
...  campo_descricao_servico=//input[@id="DescricaoServicoFederal"]
...  btn_salvar=//button[@id="incluirAtualizarCodigoServico"]
...  mensagem_sucesso=//div[@class='toast-message'][contains(.,'Código de Serviço salvo com sucesso')]



*** Keywords ***
vejo a tela codigo de serviço federal
    Wait Until Element Is Visible   ${cadastro_codigo.label_codigo_servico_federal}

estou na tela codigo de serviço federal
    clico no item codigo servico
    vejo a tela codigo de serviço federal x municipal
    clico no botão cadastrar novo codigo federal
    vejo a tela codigo de serviço federal
    Sleep  1s

clico no botão cadastrar novo codigo federal
    Wait Until Element Is Visible     ${cadastro_codigo.btn_novo_codigo}
    Click Element                     ${cadastro_codigo.btn_novo_codigo} 
    Sleep  3s

digito o numero do codigo do serviço federal
    Wait Until Element Is Visible     ${cadastro_codigo.campo_numero_codigo}
    Input Text                        ${cadastro_codigo.campo_numero_codigo}  12345 
    Sleep  2s

digito a descrição do codigo do serviço federal
    Wait Until Element Is Visible     ${cadastro_codigo.campo_descricao_servico}
    Input Text                        ${cadastro_codigo.campo_descricao_servico}  9876 
    Sleep  2s
clico no botão salvar servico
    Wait Until Element Is Visible     ${cadastro_codigo.btn_salvar}
    Click Element                     ${cadastro_codigo.btn_salvar}
    Sleep  1s

vejo a mensagem codigo do serviço do novo cadastro salvo com sucesso
    Wait Until Element Is Visible     ${cadastro_codigo.mensagem_sucesso}

