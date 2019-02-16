*** Settings ***
Library  Selenium2Library
Library  String

*** Keywords ***

Click forget button
    [Arguments]  ${signup_email_value}
    Click Element  //a[@data-target='#forgotPassword']
    #GetAlertMessage  //h5[@id='exampleModalLabel']
    Input Text  ${request_email}  ${signup_email_value}
    Click button  //button[contains(text(),'Send Email')]
    Wait Until Page Contains   Email sent. Please click the link provided and reset your password.

Pokemail
    Open Browser  ${pokemail_url}   ${BROWSER}
    Maximize Browser Window
    Click Element  //span[@id='inbox-id']
    sleep  2s
    Input Text  //span[@id='inbox-id']//input[@type='text']  ${signup_email_value}
    sleep  2s
    Click Element  //button[@class='save button small']
    sleep  15s
    Click Element  //span[contains(text(),'Reset your password by clicking on this link:http:')]
    sleep  5s
    Click Element  //a[@target='_blank']
    sleep  3s
    Select Window  new
    ${text6}=   Get Location
    log to console  Page URL is :${text6}
    Wait Until Page Contains  Please reset your password.
    Input Text  ${Password_field}  ${signup_password_value}
    Input Text  ${confirm_password}  ${signup_password_value}
    Click Button  ${Submit_new_password}
    sleep  5s
    Wait Until Page Contains  Password reset successfully. Please login.
