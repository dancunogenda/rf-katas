*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${URL}            http://localhost:7272
${USERNAME}       demo  
${PASSWORD}       mode

*** Test Cases ***
Error Page Should Be Visible After Incorrect Login
    Open Browser To Login Page
    Enter Username    ${EMPTY}
    Enter Password    ${SPACE*5}
    Submit Login Form
    Verify That Error Page Is Visible
    [Teardown]    Close Browser
    
*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    browser=ff
    Maximize Browser Window       
    
Enter Username
    [Arguments]    ${USERNAME}  
    Input Text    id=username_field    ${USERNAME}
    
Enter Password
    [Arguments]    ${PASSWORD}
    Input Password    id=password_field    ${PASSWORD} 
    
Submit Login Form
    Click Element    id=login_button   
    
Verify That Error Page Is Visible
    Page Should Contain    Error Page   
    Location Should Be     ${URL}/error.html
    Title Should Be        Error Page         
