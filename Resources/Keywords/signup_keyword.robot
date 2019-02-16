*** Settings ***
Library  Selenium2Library
Library  String

*** Keywords ***
Click Register Button
    Click Element  //a[@routerlink='/signup']

Signup name
    [Arguments]  ${first_name_value}  ${last_name_value}
    Input Text  ${f_name}  ${first_name_value}
    Input Text  ${l_name}  ${last_name_value}

Signup email
    [Arguments]  ${signup_email_value}
    Input Text  ${signup_email}  ${signup_email_value}
Signup password
    [Arguments]  ${signup_password_value}
    Input Text  ${signup_password}  ${signup_password_value}

Submit Info
    Click Button  ${signup_submit_button}
    Wait Until Page Contains  Thank you for registering. Please verify your email address.

Pokemail
    Open Browser  ${pokemail_url}   ${BROWSER}
    Maximize Browser Window
    Click Element  //span[@id='inbox-id']
    sleep  2s
    Input Text  //span[@id='inbox-id']//input[@type='text']  ${signup_email_value}
    sleep  2s
    Click Element  //button[@class='save button small']
    sleep  20s
    Click Element  //span[contains(text(),'Verify your email address by clicking on this link:http://18')]
    sleep  5s
    Click Element  //a[@target='_blank']
    Switch Browser  1
    Title Should Be  AWSQuizFE
    sleep  5s
    ${text8}=   Get Title
    log to console  The title of the page is: ${text8}
    Maximize Browser Window
Input Email
    [Arguments]  ${signup_email_value}
    Input Text  ${Email_element}  ${signup_email_value}
Inupt Password
    [Arguments]  ${signup_password_value}
    Input Password  ${Password_element}  ${signup_password_value}
Click login
    Click Element  ${sign_in}
    sleep  5s



