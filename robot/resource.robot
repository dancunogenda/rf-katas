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

    