*** Settings ***
Library    RequestsLibrary

Suite Setup    Create Session    reqres    https://reqres.in/api

*** Variables ***
${HEADERS}    {"Content-Type": "application/json", "x-api-key": "reqres-free-v1"}
${USER_ID}    None

*** Test Cases ***
Criar Novo Usuário (POST)
    ${body}=    Create Dictionary    name=Leonardo Gutierrez    job=QA Engineer
    ${response}=    POST On Session    reqres    /users    json=${body}    headers=${HEADERS}
    Should Be Equal As Integers    ${response.status_code}    201
    Log To Console    Usuario criado: ${response.json()}
    ${USER_ID}=    Set Variable    ${response.json()}[id]
    Set Suite Variable    ${USER_ID}

Obter Detalhes do Usuário Criado (GET)
    ${response}=    GET On Session    reqres    /users/${USER_ID}    headers=${HEADERS}
    Should Be Equal As Integers    ${response.status_code}    200
    Log To Console    Usuario obtido: ${response.json()}

Atualizar Informações do Usuário (PUT)
    ${body}=    Create Dictionary    name=Leonardo Gutierrez    job=QA Lead
    ${response}=    PUT On Session    reqres    /users/${USER_ID}    json=${body}    headers=${HEADERS}
    Should Be Equal As Integers    ${response.status_code}    200
    Log To Console    Usuario atualizado: ${response.json()}

Excluir Usuário (DELETE)
    ${response}=    DELETE On Session    reqres    /users/${USER_ID}    headers=${HEADERS}
    Should Be Equal As Integers    ${response.status_code}    204
    Log To Console    Usuario excluido com sucesso
