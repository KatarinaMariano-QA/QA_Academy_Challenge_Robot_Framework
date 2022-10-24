*** Settings ***
Resource    ../../page_objects/login_page.robot
Resource    ../../page_objects/home_page.robot


*** Keywords ***
Verify if succesfully message is "${EXPECTED_MESSAGE}"
    ${MESSAGE_OBTEINED}=    Capture the text of the element    ${SUCCESS_MESSAGE_TOAST}
    Should Contain    ${MESSAGE_OBTEINED}    ${EXPECTED_MESSAGE}

Verify if error message is "${EXPECTED_MESSAGE}"
    ${MESSAGE_OBTEINED}=    Capture the text of the element    ${ERROR_MESSAGE_TOAST}
    Should Contain    ${MESSAGE_OBTEINED}    ${EXPECTED_MESSAGE}

