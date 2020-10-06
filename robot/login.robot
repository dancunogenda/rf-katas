*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${SERVER}         127.0.0.1:7272
${LOGIN URL}      http://${SERVER}/
${WELCOME URL}    http://${SERVER}/welcome.html
${USERNAME}       demo    
${PASSWORD}       mode
${BROWSER}        Chrome

*** Test Cases ***
Welcome Page Should Be Visible After Successful Login
    Open Browser To Login Page
    Enter Username
    Enter Password
    Submit Login Form
    Verify That Welcome Page Is Visible

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window       
    
Enter Username
    Input Text    id=username_field    ${USERNAME}
    
Enter Password
    Input Password    id=password_field    ${PASSWORD} 
    
Submit Login Form
    Click Element    id=login_button    
    
Login Page Should Be Open
    Title Should Be    Login Page    
    
Verify That Welcome Page Is Visible
    Page Should Contain    Welcome Page    
    Location Should Be    ${WELCOME URL} 
    Title Should Be    Welcome Page    
          
