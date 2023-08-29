*** Settings ***

Library    SeleniumLibrary
Library    String

*** Variables ***

${weVerityText}     //*[@id="comp-lhp9lfxc1"]/h2
${weClientVerity}    //*[@id="comp-lhp9lfyi1"]

*** Test Cases ***

Abrir navegador e acessar site da Verity
    Open Browser    url=https://www.verity.com.br/     browser=Chrome
Validar Elementos de Textos do site
    Get Text    locator=${weVerityText}
    Element Should Be Enabled   ${weVerityText}
    Element Should Be Enabled   ${weClientVerity}
    Element Text Should Be  ${weVerityText}   expected=    #O retorno desse campo é vazio no site (via XPath)
    Element Text Should Be  ${weClientVerity}   expected=Nossos clientes_   message=${weClientVerity}    
    Sleep    3s
