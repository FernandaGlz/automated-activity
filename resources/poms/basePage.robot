*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections

*** Variables ***
${BROWSER}      firefox
${REMOTE}       ${EMPTY}
${ENVIRONMENT}
${VERSION}      ${EMPTY}
${SERVER_URL}   ${EMPTY}
${WAIT}         15s

*** Keywords ***
Generate Base Page URL
    [Documentation]    Generates the base page URL that all pages contain. Also is the URL to go to when logging in.
    ...
    ...    Returns:
    ...    | ${loginURL} | The base page URL |
    ${baseURL} =    Catenate    SEPARATOR=    https://ss-testing-automated-exercise.herokuapp.com/login    ${VERSION}
    ${loginURL} =    Set Variable If    "${SERVER_URL}" == "${EMPTY}"    ${baseURL}    ${SERVER_URL}
    Set Test Variable    ${loginURL}
    Return from Keyword    ${loginURL}

Generate Dynamic Page URL
    [Documentation]    Generates the base page URL that all pages contain. Also is the URL to go to when logging in.
    ...
    ...    Returns:
    ...    | ${dynamicURL} | The base page URL |
    ${baseURL} =    Catenate    SEPARATOR=    https://ss-testing-automated-exercise.herokuapp.com/dynamic_content    ${VERSION}
    ${loginURL} =    Set Variable If    "${SERVER_URL}" == "${EMPTY}"    ${baseURL}    ${SERVER_URL}
    Set Test Variable    ${dynamicURL}
    Return from Keyword    ${dynamicURL}