*** Settings ***
Resource    ../global_keywords/global_keywords.robot


*** Variables ***
${LOGOUT_BUTTON}           xpath=//a[@href='/logout']


*** Keywords ***
Realize logout
    Click Link    ${LOGOUT_BUTTON}