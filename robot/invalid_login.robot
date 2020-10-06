*** Settings ***
Library    SeleniumLibrary  
Resource    resource.robot  

*** Variables ***
${URL}            http://localhost:7272
${USERNAME_1}       demo 
${PASSWORD_1}       moed
${USERNAME_2}       deom 
${PASSWORD_2}       mode
${USERNAME_3}       demo 
${PASSWORD_3}       moed

*** Test Cases ***
Error Page Should Be Visible After Incorrect Login
    Open Browser To Login Page
    Enter Username    ${USERNAME_1}
    Enter Password    ${PASSWORD_1}
    Submit Login Form
    Verify That Error Page Is Visible
    [Teardown]    Close Browser

Error Page Should Be Visible After Incorrect Login Again
    Open Browser To Login Page
    Enter Username    ${USERNAME_2}
    Enter Password    ${PASSWORD_2}
    Submit Login Form
    Verify That Error Page Is Visible
    [Teardown]    Close Browser

Error Page Should Be Visible After Incorrect Login Again And Again
    Open Browser To Login Page
    Enter Username    ${USERNAME_3}
    Enter Password    ${PASSWORD_3}
    Submit Login Form
    Verify That Error Page Is Visible
    [Teardown]    Close Browser

*** Keywords ***
Verify That Error Page Is Visible
    Page Should Contain    Error Page   
    Location Should Be     ${URL}/error.html
    Title Should Be        Error Page     
