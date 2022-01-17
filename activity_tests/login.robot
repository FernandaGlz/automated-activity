*** Settings ***
Library         SeleniumLibrary
Resource        ../resources/main.robot
Test Setup      Basic Selenium Test Setup
Test Teardown   Basic Selenium Test Teardown



*** Test Cases ***

Login_logOut
   [Documentation]  - Login with valid credentials
   ...   -Validate the authentication was successful
   ...   -Login with no valid credentials
   ...   -Validate the authentication was unsuccessful
     [Setup]    Login Setup

     Confirms User Is Logged
     Click Log Out In Logout Button
     Confirms User Is LogOut


