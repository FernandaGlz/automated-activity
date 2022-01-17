*** Settings ***
Resource         ../main.robot

*** Variables ***
${loc_page}            css=.example

*** Keywords ***
Confirms Page Is Loaded
    [Arguments]
    [Documentation]
    ...    *Arguments:*
    ...    - ${WAIT} - Wait until element is loaded
    Wait Until Element Is Visible    ${loc_page}     ${WAIT}
