*** Settings ***
Library         SeleniumLibrary
Resource        ../resources/main.robot
Test Setup      Basic Selenium Test Setup
Test Teardown   Basic Selenium Test Teardown


*** Test Cases ***
refresh_page
  [Documentation]

     [Setup]    Refresh Page
      Generate Dynamic Page URL
      Confirms Page Is Loaded

