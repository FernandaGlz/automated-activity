*** Settings ***
Resource       main.robot


*** Keywords ***
Basic Selenium Test Setup
    [Documentation]    - Setups up Glados
    ...    - Generates base page URL
    ...    - Opens browser
    ...    - Maximizes browser window
    glados setup
    ${loginURL}=    Generate Base Page URL
    ${capabilities}    Create Dictionary    platform=${PLATFORMNAME}    browserName=${BROWSER}    marionette=${True}
    open browser    ${loginURL}    ${BROWSER}    ${EMPTY}    ${REMOTE}    ${capabilities}
    Maximize Browser Window


Login Setup
    [Documentation]   - User must be logged in


    Basic Selenium Test Setup
    Invalid Login Credentials
    Confirms invalid credentials
    Login Credentials
    Confirms User Is Logged
    Click Log Out In Logout Button
    Confirms User Is LogOut

Refresh Page
    Basic Selenium Test Setup
    Confirms Page Is Loaded


