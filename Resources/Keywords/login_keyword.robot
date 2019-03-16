*** Settings ***
Library  Selenium2Library
Library  BuiltIn

*** Keywords ***
login
    [Arguments]  ${signup_email_value}  ${signup_password_value}
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Title Should Be  AWSQuizFE
    ${text1}=   Get Title
    log to console  The title of the page is: ${text1}
    Input Text  ${Email_element}  ${signup_email_value}
    Input Text  ${Password_element}  ${signup_password_value}
    Click Element  ${sign_in}
    sleep  5s
login dashboard
    ${textw}=   Get Text  //span[contains(text(),'Dashboard')]
    log to console  The page contains: ${textw}
    #${text}=  Get Text  ${text_location1}
    #log to console  ${text}
    #Click Element  ${start_quiz}
    #sleep  5s
    #Click Element  ${end_quiz}
    #Sleep  5s
    #${text2}=  Get Text  //strong[contains(text(),'lami-test quiz')]
    #log to console  ${text2}



SInput Email
    [Arguments]  ${login_email_value}
    Input Text  ${Email_element}  ${login_email_value}
SInupt Password
    [Arguments]  ${login_password_value}
    Input Text  ${Password_element}  ${login_password_value}
SClick login
    Click Element  ${sign_in}
    sleep  5s
    ${superadminlog}=  Get Text  ${text_location1}
    log to console  ${superadminlog}

