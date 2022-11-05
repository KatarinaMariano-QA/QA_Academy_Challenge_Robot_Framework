*** Settings ***
Resource    ../global_keywords/global_keywords.robot


*** Variables ***
${ACCOUNT_NAME_INPUT}       id=nome
${ACCOUNT_SAVE_BUTTON}      xpath=//button[@class='btn btn-primary']     


*** Keywords ***
Insert the account's name "${ACCOUNT_NAME}"
    Insert the value in the field    ${ACCOUNT_NAME_INPUT}    ${ACCOUNT_NAME}

Click the save button
    Click Button    ${ACCOUNT_SAVE_BUTTON}
