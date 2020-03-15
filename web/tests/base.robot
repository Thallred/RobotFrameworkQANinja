*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://training-wheels-protocol.herokuapp.com

*** Keywords ***
Nova Sessão
    Open Browser        ${url}      chrome

Encerra Sessão
    Capture Page Screenshot
    Close Browser