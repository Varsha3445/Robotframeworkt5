*** Settings ***
Documentation      This suite will handles all the test cases related to invalid
...     credential test for orangehrm. Test case - TC_OH_3
Resource      ../Resource/Base/CommonFunctionality.resource

Test Setup      Launch Browser and navigate to url
Test Teardown      Close Browser

Test Template       Verify Invalid Credential Template

*** Test Cases ***
TC1       john      john123     Invalid credentials
TC2       peter     peter123     Invalid credentials
TC3       ${EMPTY}   admin123      Username cannot be empty
TC4        varsha     ${EMPTY}      Password cannot be empty


*** Keywords ***
Verify Invalid Credential Template
    [Arguments]     ${username}     ${password}     ${expected_error}
    Input Text    id=txtUsername    ${username}
    Input Password    id=txtPassword    ${password}
    Click Element    id=btnLogin
    Element Text Should Be    id=spanMessage    ${expected_error}