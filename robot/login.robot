*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${URL}            http://localhost:7272
${USERNAME}       demo    
${PASSWORD}       mode

*** Test Cases ***
Welcome Page Should Be Visible After Successful Login
    [Setup]     Do Successful Login
    Verify That Welcome Page Is Visible
    [Teardown]    Close Browser

Login Form Should Be Visible After Successful Logout
    [Setup]    Do Successful Login
    Click Link    //*[@id="container"]/p/a
    [Teardown]    Close Browser 
     
*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    browser=ff
    Maximize Browser Window       
    
Enter Username
    Input Text    id=username_field    ${USERNAME}
    
Enter Password
    Input Password    id=password_field    ${PASSWORD} 
    
Submit Login Form
    Click Element    id=login_button       
    
Verify That Welcome Page Is Visible
    Page Should Contain    Welcome Page    
    Location Should Be    ${URL}/welcome.html 
    Title Should Be    Welcome Page    
          
Do Successful Login
    Open Browser To Login Page
    Enter Username
    Enter Password
    Submit Login Form
    
Verify That Page Contains Login Page
    Title Should Be    Login Page  