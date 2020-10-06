*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${URL}            http://localhost:7272
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
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window       
    
Enter Username
    Input Text    id=username_field    ${USERNAME}
    
Enter Password
    Input Password    id=password_field    ${PASSWORD} 
    
Submit Login Form
    Click Element    id=login_button    
    
Verify That Welcome Page Is Visible
    Page Should Contain    Welcome Page    
    Location Should Be    http://localhost:7272/welcome.html 
    Title Should Be    Welcome Page    
          
