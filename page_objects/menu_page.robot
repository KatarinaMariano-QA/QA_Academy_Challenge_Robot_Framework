*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${ACCOUNT_MENU}            xpath=//a[contains(.,'Contas')]
${OPTION_ADD_ACCOUNT}      xpath=//a[contains(.,'Adicionar')]
${OPTION_ACCOUNT_LIST}     xpath=//a[contains(.,'Listar')]


*** Keywords ***
Go to the add account page 
    Click Link    ${ACCOUNT_MENU}
    Click Link    ${OPTION_ADD_ACCOUNT}

Go to the account list page
    Click Link    ${ACCOUNT_MENU}
    Click Link    ${OPTION_ACCOUNT_LIST}