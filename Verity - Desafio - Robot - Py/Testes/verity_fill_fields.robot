*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${CAMPO_NOME}    xpath://*[@id="input_comp-kwz6tqej"]
${CAMPO_EMAIL}    xpath://*[@id="input_comp-kwz6tqf7"]
${CAMPO_TELEFONE}    xpath://*[@id="input_comp-kwz6tqfe"]
${CAMPO_DESCRITIVO}    xpath://*[@id="textarea_comp-kwz6tqfr"]  


*** Test Cases ***

Abrir navegador, acessar site da Verity e preencher os campos do formulário
    Dado que eu acesse o site da Verity
    Quando clicar no botão Contato
    E eu for redirecionado a página do formulário
    Então o formulário deve ser preenchido automaticamente
    E o botão "Aceito receber mensagens da Verity" será pressionado
    E cinco segundos depois o botão "Enviar" deve ser pressionado automaticamente enviando o formulário para a Verity


*** Keywords ***
Dado que eu acesse o site da Verity
    Open Browser    url=https://www.verity.com.br/     browser=Chrome
Quando clicar no botão Contato
    Click Element    id:comp-kevyodnk6label
E eu for redirecionado a página do formulário
    Sleep    5s
Então o formulário deve ser preenchido automaticamente
    Input Text    ${CAMPO_NOME}    Usuário de Testes
    Input Text    ${CAMPO_EMAIL}    userteste@teste.com.br
    Input Text    ${CAMPO_TELEFONE}    11940028922
    Input Text    ${CAMPO_DESCRITIVO}    Lorem ipsum dolor sit amet. Eum fugiat corporis est veritatis ipsam quo amet harum.
    Sleep    5s
E o botão "Aceito receber mensagens da Verity" será pressionado
    Click Element    xpath://*[@id="comp-kwz6tqgp"]/input
    Sleep    5s
E cinco segundos depois o botão "Enviar" deve ser pressionado automaticamente enviando o formulário para a Verity
    Click Element    xpath://*[@id="comp-kwz6tqhd"]/button






