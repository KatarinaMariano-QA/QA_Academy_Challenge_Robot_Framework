*** Settings ***
Resource           ../page_objects/login_page.robot
Resource           ../page_objects/menu_page.robot
Resource           ../page_objects/add_account_page.robot

Suite Setup        Login to the site    katarina@academy.com    katarina@academy 
Test Setup         Go to the add account page
Suite Teardown     Close Browser


*** Test Cases ***
Successfully add account    
    [Tags]   priority_low
    Insert the account's name "Conta Teste 1"
    Click the save button
    Verify if succesfully message is "Conta adicionada com sucesso!"

Fail to add account without account's name
    [Tags]   priority_medium
    Insert the account's name ""
    Click the save button
    Verify if error message is "Informe o nome da conta"

Fail to add account with only space in the name  
    [Documentation]    Scenario that returns error because it should not be possible to add an account only with space in the name
    [Tags]   priority_high
    Insert the account's name " "
    Click the save button
    Verify if error message is "Informe o nome da conta"

Fail to add duplicate account
    [Tags]   priority_high
    Insert the account's name "Conta Teste 1"
    Click the save button
    Verify if error message is "Já existe uma conta com esse nome!"