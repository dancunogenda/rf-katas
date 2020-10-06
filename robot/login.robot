*** Settings ***
Library    SeleniumLibrary   
Resource    resource.robot 

*** Variables ***
${URL}            http://localhost:7272
${USERNAME}       demo    
${PASSWORD}       mode

*** Test Cases ***
Welcome Page Should Be Visible After Successful Login
    Open Browser To Login Page
    Enter Username      ${USERNAME}
    Enter Password      ${PASSWORD}
    Submit Login Form
    Verify That Welcome Page Is Visible
    [Teardown]    Close Browser

Login Form Should Be Visible After Successful Logout
    Open Browser To Login Page
    Enter Username      ${USERNAME}
    Enter Password      ${PASSWORD}
    Submit Login Form
    Click Link    //*[@id="container"]/p/a
    [Teardown]    Close Browser 

*** Keywords ***
Verify That Welcome Page Is Visible
    Page Should Contain    Welcome Page    
    Location Should Be    ${URL}/welcome.html 
    Title Should Be    Welcome Page  

Verify That Page Contains Login Page
    Title Should Be    Login Page

Do Successful Login
    Open Browser To Login Page
    Enter Username
    Enter Password
    Submit Login Form