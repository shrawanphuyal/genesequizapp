*** Settings ***
Resource    ../Resources/Keywords/quizaddkeywords.robot
Resource    ../Resources/Keywords/login_keyword.robot
Resource    ../Resources/Keywords/browserkeywords.robot
Variables   ../Resources/Variables/user.py
Suite Teardown  Close All Browsers

*** Test Cases ***
Browser opening
    Browser Opening

Login
    SInput Email  ${login_email_value}
    SInupt Password  ${login_password_value}
    SClick login


Add Quiz
    Quiz delete
    Question Add
