*** Settings ***
Resource        base.robot

Test Setup      Nova Sessão
Test Teardown   Encerra Sessão  

*** Test Cases ***
Login com sucesso
    Go To                   ${url}/login
    Input Text              css:input[name=username]        stark
    Input Text              css:input[name=password]        jarvis!
    Click Element           class:btn-login

    Page Should Contain     Olá, Tony Stark. Você acessou a área logada!

Senha inválida
    [tags]                  login_error
    Go To                   ${url}/login
    Input Text              css:input[name=username]        stark
    Input Text              css:input[name=password]        asd123
    Click Element           class:btn-login

    ${message}=             Get WebElement                  id:flash
    Should Contain          ${message.text}                 Senha é invalida!

Usuário não existe
    [tags]                  login_user404
    Go To                   ${url}/login
    Input Text              css:input[name=username]        Gustavo
    Input Text              css:input[name=password]        asd123
    Click Element           class:btn-login

    ${message}=             Get WebElement                  id:flash
    Should Contain          ${message.text}                 O usuário informado não está cadastrado!