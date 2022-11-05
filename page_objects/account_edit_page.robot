*** Settings ***
Resource    ../global_keywords/global_keywords.robot


*** Variables ***
${ACCOUNT_NAME_INPUT}       id=nome
${ACCOUNT_SAVE_EDIT_BUTTON}      xpath=//button[@class='btn btn-primary']     


*** Keywords ***
Edit the account's name for "${NEW_ACCOUNT_NAME}"
    Insert the value in the field    ${ACCOUNT_NAME_INPUT}    ${NEW_ACCOUNT_NAME}

Click the save edit button
    Click Button    ${ACCOUNT_SAVE_EDIT_BUTTON}