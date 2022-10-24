*** Settings ***
Library     SeleniumLibrary
Resource    ../global_keywords/global_keywords.robot

*** Variables ***
${SUCCESS_MESSAGE_TOAST}   xpath=//div[@class='alert alert-success']
${LOGOUT_BUTTON}           xpath=//a[@href='/logout']

*** Keywords ***
Realize logout
    Click Link    ${LOGOUT_BUTTON}