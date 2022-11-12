*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${ACCOUNT_MENU}            link=Contas
${OPTION_ADD_ACCOUNT}      link=Adicionar
${OPTION_ACCOUNT_LIST}     link=Listar


*** Keywords ***
Go to the add account page 
    Click Link    ${ACCOUNT_MENU}
    Click Link    ${OPTION_ADD_ACCOUNT}

Go to the account list page
    Click Link    ${ACCOUNT_MENU}
    Click Link    ${OPTION_ACCOUNT_LIST}