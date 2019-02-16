*** Settings ***
Resource    ../Resources/Keywords/forgetpassword_keyword.robot
Resource    ../Resources/Keywords/browserkeywords.robot
Variables   ../Resources/Variables/user.py
Suite Teardown  Close All Browsers

*** Test Cases ***
Checking Browser
    Browser Opening
Checking Forget mail test
    Click forget button  ${signup_email_value}
managing new password using pokemail.net
    Pokemail

