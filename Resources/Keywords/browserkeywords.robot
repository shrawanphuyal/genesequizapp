*** Settings ***
Library  Selenium2Library


*** Keywords ***
Browser Opening
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Title Should Be  AWSQuizFE
    ${text1}=   Get Title
    log to console  The title of the page is: ${text1}


