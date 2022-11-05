*** Settings ***
Resource           ../page_objects/login_page.robot
Resource           ../page_objects/menu_page.robot
Resource           ../page_objects/account_list_page.robot

Suite Setup        Login to the site    katarina@academy.com    katarina@academy 
Test Setup         Go to the account list page
Suite Teardown     Close Browser


*** Test Cases ***
Successfully account delete
    [Documentation]   Priority: Low
    Click the delete button from the name account    Conta Teste EDITADA
    Verify if succesfully message is "Conta removida com sucesso!"

