*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Click the delete button from the name account
    [Arguments]    ${ACCOUNT_NAME_TO_BE_DELETED}
    Click Link     xpath=//tr[contains(td, "${ACCOUNT_NAME_TO_BE_DELETED}")]//a[contains(@href, "removerConta")]

Click the edit button from the name account
    [Arguments]    ${ACCOUNT_NAME_TO_BE_EDITED}
    Click Link     xpath=//tr[contains(td, "${ACCOUNT_NAME_TO_BE_EDITED}")]//a[contains(@href, "editarConta")]
