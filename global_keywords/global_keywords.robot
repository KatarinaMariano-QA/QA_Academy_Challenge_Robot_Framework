*** Settings ***
Library    SeleniumLibrary

*** Variables ***
@{POSSIBLE_BROWSER}    chrome    headlesschrome
${BASE_URL}            https://seubarriga.wcaquino.me

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


