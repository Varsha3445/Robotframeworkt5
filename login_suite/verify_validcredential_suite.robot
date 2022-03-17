*** Settings ***
Documentation
...  credential test.
Library     SeleniumLibrary

Test Teardown       Close Browser
Resource    ../Resource/Base/CommonFunctionality.resource

*** Test Cases ***
verify Valid Credential Test
    Launch Browser
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    id=btnLogin
    Page Should Contain    My Info