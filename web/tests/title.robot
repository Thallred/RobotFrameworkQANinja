*** Settings ***
Resource        base.robot

Test Setup      Nova Sessão
Test Teardown   Encerra Sessão   

*** Test Cases ***
Should See Page Title    
    Title Should Be     Training Wheels Protocol
   