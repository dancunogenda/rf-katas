*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
Welcome Page Should Be Visible After Successful Login
    Open Browser    http://127.0.0.1:7272
    Input Text    id=username_field    demo
    Input Password    id=password_field    mode 
    Click Element    id=login_button
    Page Should Contain    Welcome Page   
    Location Should Be    http://127.0.0.1:7272/welcome.html    
    Title Should Be    Welcome Page      
