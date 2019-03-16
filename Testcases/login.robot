*** Settings ***
Resource    ../Resources/Keywords/login_keyword.robot
Resource    ../Resources/Keywords/browserkeywords.robot
Variables   ../Resources/Variables/user.py
#Variables   ../Resources/Variables/Locators.py
Suite Teardown  Close All Browsers

*** Test Cases ***
#Opening Browser
  # Browser Opening

Login
    login  ${signup_email_value}  ${signup_password_value}
Dashboard validate
    login dashboard
    #${Browser} =    Browser Opening.login
    #Repeat Keyword	5 times  login  ${signup_email_value}  ${signup_password_value}
    #Repeat Keyword	5 times
