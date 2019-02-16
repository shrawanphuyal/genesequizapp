
*** Settings ***
Resource    ../Resources/Keywords/login_keyword.robot
Resource    ../Resources/Keywords/browserkeywords.robot
Variables   ../Resources/Variables/user.py
#Variables   ../Resources/Variables/Locators.py
Suite Teardown  Close All Browsers

*** Test Cases ***
Opening Browser
    Browser Opening

Login
    SInput Email  ${login_email_value}
    SInupt Password  ${login_password_value}
    SClick login






















    #${text}=  Get Text  ${text_location1}
    #log to console  ${text}
    #Click Element  ${start_quiz}
    #sleep  5s
    #Click Element  ${end_quiz}
    #Sleep  5s
    #${text2}=  Get Text  //strong[contains(text(),'lami-test quiz')]
    #log to console  ${text2}