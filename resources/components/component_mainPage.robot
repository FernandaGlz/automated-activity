*** Settings ***
Resource         ../main.robot

*** Variables ***

${loc_input_username}         css=#username
${loc_input_password}         css=#password
${loc_loginButton}            css=.fa.fa-2x
${loc_page_loaded}          css=.subheader
${loc_logout_button}        	css=.button.secondary.radius
${loc_login_page}            css=.example
${loc_invalid_credentials}   css=.flash.error

*** Keywords ***

Login User Field
    [Arguments]    ${username1}=tomsmith
    [Documentation]
    ...    *Arguments:*
    ...    - ${WAIT} - Wait until element is loaded
    ...    - ${username1}
    Wait Until Element Is Visible    ${loc_input_username}    ${WAIT}
    Input Text    ${loc_input_username}   ${username1}

Login Password Field
    [Arguments]    ${password1}=SuperSecretPassword!
    [Documentation]  -  Inputs the password in password field
    ...     *Arguments:*
    ...     - ${WAIT} -Wait until element is loaded
    ...     - ${password1}
    Wait Until Element Is Visible    ${loc_input_password}    ${WAIT}
    Input Text    ${loc_input_password}    ${password1}

Click On Login Button
    [Documentation]     -Click on login button
    ...     *Arguments:*
    ...     - ${WAIT} -  Wait Until Element Is Load
    Wait Until Element Is Visible   ${loc_loginButton}    ${WAIT}
    Click Element  ${loc_loginButton}

Login Credentials
    [Arguments]    ${username1}=tomsmith  ${password1}=SuperSecretPassword!
    [Documentation]
    ...    *Arguments:*
    ...    - ${WAIT}     -Wait until element is loaded
    ...    - ${username1} -Input username
    ...    - ${password1} -Input password
    Login User Field        ${username1}
    Login Password Field    ${password1}
    Click On Login Button

Invalid Login Credentials
    [Arguments]    ${username}=tomsmith1  ${password}=SuperSecretPassword!!
    [Documentation]
    ...    *Arguments:*
    ...    - ${WAIT}     -Wait until element is loaded
    ...    - ${username} -Input username
    ...    - ${password} -Input password
    Login User Field        ${username}
    Login Password Field    ${password}
    Click On Login Button

Confirms invalid credentials
       [Documentation]     Confirms user is logged on forums page succesfully
    ...    *Arguments:*
    ...     - ${WAIT} - Wait until page is loaded
    Wait Until Element Is Visible    ${loc_invalid_credentials}  ${WAIT}

Confirms User Is Logged
    [Documentation]     Confirms user is logged  succesfully
    ...    *Arguments:*
    ...     - ${WAIT} - Wait until page is loaded
    Wait Until Element Is Visible    ${loc_page_loaded}  ${WAIT}


Click Log Out In Logout Button
    [Documentation]    Click log out on dropdown menu
    ...    *Arguments:*
    ...    - ${WAIT} -Wait until element is loaded
   Wait Until Element Is Visible    ${loc_logout_button}  ${WAIT}


Confirms User Is LogOut
         [Documentation]    Confirms if user is logOut
    ...    *Arguments:*
    ...    -${WAIT}
    Wait Until Element Is Visible     ${loc_login_page}   ${WAIT}
