*** Settings ***
Library    SeleniumLibrary


*** Variables ***
@{POSSIBLE_BROWSER}        chrome    headlesschrome
${BASE_URL}                https://seubarriga.wcaquino.me
${SUCCESS_MESSAGE_TOAST}   xpath=//div[@class='alert alert-success']
${ERROR_MESSAGE_TOAST}     xpath=//div[@class='alert alert-danger']


*** Keywords ***
Open the browser
    [Arguments]     ${URL} 
    Open Browser    ${URL}    ${POSSIBLE_BROWSER}[0]

Insert the value in the field
    [Arguments]    ${LOCATOR}    ${CONTENT}
    Clear Element Text    ${LOCATOR}
    Input Text    ${LOCATOR}    ${CONTENT}

Capture the text of the element
    [Arguments]    ${LOCATOR}
    ${ELEMENT_TEXT}=    Get Text    ${LOCATOR}
    [Return]    ${ELEMENT_TEXT}

Verify if succesfully message is "${EXPECTED_MESSAGE}"
    ${MESSAGE_OBTEINED}=    Capture the text of the element    ${SUCCESS_MESSAGE_TOAST}
    Should Contain    ${MESSAGE_OBTEINED}    ${EXPECTED_MESSAGE}

Verify if error message is "${EXPECTED_MESSAGE}"
    ${MESSAGE_OBTEINED}=    Capture the text of the element    ${ERROR_MESSAGE_TOAST}
    Should Contain    ${MESSAGE_OBTEINED}    ${EXPECTED_MESSAGE}

