*** Settings ***
Library         SeleniumLibrary
Resource        ${EXECDIR}/Pages/trabalhe_conosco.robot
Suite Setup     Open Browser  about:blank  chrome
Suite Teardown  Close Browser


*** Variables ***
${url} =  https://www.primecontrol.com.br/trabalhe-conosco/


*** Test Cases ***
Preencher formulario com sucesso
        Go To  ${url}
        Click Element  ${trabalheConosco.btnAccept}
        Click Element  ${trabalheConosco.btnCadastrarCurriculo}
        Switch Window  New
        Wait Until Page Contains  Nome completo  30
        Input Text  ${trabalheConosco.nome}  ${preencheCampos.nome}
        Input Text  ${trabalheConosco.cargo}  ${preencheCampos.cargo}
        Input Text  ${trabalheConosco.salario}  ${preencheCampos.salario}
        Input Text  ${trabalheConosco.email}  ${preencheCampos.email}
        Input Text  ${trabalheConosco.telefone}  ${preencheCampos.telefone}
        Select From List By Value  ${trabalheConosco.slcPais}  ${preencheCampos.slcPais}
        Input Text  ${trabalheConosco.estado}  ${preencheCampos.estado}
        Input Text  ${trabalheConosco.cidade}  ${preencheCampos.cidade}
        Input Text  ${trabalheConosco.bairro}  ${preencheCampos.bairro}
        Input Text  ${trabalheConosco.endereco}  ${preencheCampos.endereco}
        Input Text  ${trabalheConosco.cep}  ${preencheCampos.cep}
        Input Text  ${trabalheConosco.resumo}  ${preencheCampos.resumo}
        Click Element  ${trabalheConosco.btnAddRedesSociais}
        Input Text  ${trabalheConosco.linkedin}  ${preencheCampos.linkedin}
        Choose File  ${trabalheConosco.curriculo}  ${EXECDIR}/CV_Cassia_Souza.pdf
        Wait Until Page Contains  CV_Cassia_Souza.pdf  30
        Click Element  ${trabalheConosco.consent}
        Scroll Element Into View  ${trabalheConosco.btnFinalizar}
        Click Element  ${trabalheConosco.btnFinalizar}
        Wait Until Element Contains  ${trabalheConosco.sucesso}  ${preencheCampos.sucesso}  30