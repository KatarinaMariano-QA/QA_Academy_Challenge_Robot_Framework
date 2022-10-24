*** Settings ***
Resource    ../global_keywords/global_keywords.robot
Library     FakerLibrary

*** Variables ***
${LOGIN_URL}               ${BASE_URL}/login
${EMAIL_INPUT}             id=email
${PASSWORD_INPUT}          id=senha
${LOGIN_BUTTON}            xpath=//button[@class='btn btn-primary']
${ERROR_MESSAGE_TOAST}     xpath=//div[@class='alert alert-danger']

*** Keywords ***
Access the login page 
    Open the browser    ${LOGIN_URL} 

Insert the user's email "${EMAIL}"
    Insert the value in the field    ${EMAIL_INPUT}    ${EMAIL}

Insert the user's password "${PASSWORD}"
    Insert the value in the field    ${PASSWORD_INPUT}    ${PASSWORD}

Insert a invalid email
    ${FAKE_EMAIL}=    FakerLibrary.Email
    Insert the user's email "${FAKE_EMAIL}"

Insert a invalid password
    ${FAKE_PASSWORD}=    FakerLibrary.Password    length=10    special_chars=True    digits=True    upper_case=True    lower_case=True
    Insert the user's password "${FAKE_PASSWORD}"

Click the enter button
    Click Button    ${LOGIN_BUTTON}