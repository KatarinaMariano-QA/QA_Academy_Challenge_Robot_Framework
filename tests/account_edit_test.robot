*** Settings ***
Resource           ../page_objects/login_page.robot
Resource           ../page_objects/menu_page.robot
Resource           ../page_objects/account_list_page.robot
Resource           ../page_objects/account_edit_page.robot

Suite Setup        Login to the site    katarina@academy.com    katarina@academy 
Test Setup         Go to the account list page
Suite Teardown     Close Browser


*** Test Cases ***
Successfully edit account  
    [Documentation]   Priority: Low
    Click the edit button from the name account    Conta Teste 1
    Edit the account's name for "Conta Teste EDITADA"
    Click the save edit button
    Verify if succesfully message is "Conta alterada com sucesso!"