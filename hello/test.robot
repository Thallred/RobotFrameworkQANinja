*** Settings ***
Library     app.py

*** Test Cases ***
Deve retornar mensagem de boa vindas
    ${result}=          Welcome     Gustavo
    Should Be Equal     ${result}   Olá Gustavo, bem vindo ao Curso Básico de Robot Framework!        