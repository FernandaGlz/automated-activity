*** Settings ***
Library     Glados
Resource    setups.robot
Resource    poms/basePage.robot
Resource    poms/pageLogin.robot
Resource    components/component_mainPage.robot
Resource    components/component_dynamicContent.robot


*** Keywords ***
Basic Selenium Test Teardown
    [Documentation]    - Logs last location
    ...    - Captures screenshot if test failed
    ...    - Updates TestRail result for the test case
    ...    - Closes all browser windows
    Log Location
    Log Source
    ${randomString} =    Generate Random String    3
    Run Keyword If    "${TEST STATUS}" == "FAIL"    Capture Page Screenshot    onFailScreenshot_${randomString}.png
    Update Testrail
    Close All Browsers
