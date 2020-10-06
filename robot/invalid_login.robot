*** Settings ***
Library         SeleniumLibrary  
Resource        resource.robot  
Test Setup      Open Browser To Login Page
Test Teardown   Close Browser
Test Template   Template Error Page Is Visible When Using Incorrect Credentials

*** Variables ***
${URL}            http://localhost:7272
${USERNAME_1}       demo 
${PASSWORD_1}       moed
${USERNAME_2}       deom 
${PASSWORD_2}       mode
${USERNAME_3}       deom 
${PASSWORD_3}       moed
${USERNAME_4}       admin 
${PASSWORD_4}       admin 

*** Test Cases ***
Test When Only Username Is Wrong                    ${USERNAME_2}   ${PASSWORD_2}

Test When Only Password Is Wrong                    ${USERNAME_1}   ${PASSWORD_1}

Test When Both Username And Password Are Wrong      ${USERNAME_3}   ${PASSWORD_3}

Test When Both Username And Password Are Empty      ${EMPTY}        ${EMPTY}

Test When Both Username and Password Are Admin      ${USERNAME_4}   ${PASSWORD_4}

*** Keywords ***
Verify That Error Page Is Visible
    Page Should Contain    Error Page   
    Location Should Be     ${URL}/error.html
    Title Should Be        Error Page     

Template Error Page Is Visible When Using Incorrect Credentials
    [Arguments]     ${USERNAME}   ${PASSWORD}
    Enter Username    ${USERNAME}
    Enter Password    ${PASSWORD}
    Submit Login Form
    Verify That Error Page Is Visible