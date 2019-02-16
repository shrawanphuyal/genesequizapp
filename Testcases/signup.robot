*** Settings ***
Resource    ../Resources/Keywords/signup_keyword.robot
Resource    ../Resources/Keywords/browserkeywords.robot
Variables   ../Resources/Variables/user.py
Suite Teardown  Close All Browsers

*** Test Cases ***
Browser opening
    Browser Opening

Signup
    Click Register Button
    Signup name  ${first_name_value}  ${last_name_value}
    Signup email  ${signup_email_value}
    Signup password  ${signup_password_value}
    Submit Info
    Sleep  10s
    Pokemail
    Input Email  ${signup_email_value}
    Inupt Password  ${signup_password_value}
    Click login

