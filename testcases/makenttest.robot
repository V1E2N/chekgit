*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/makent.robot
Suite Setup    Open my browser
Suite Teardown    Close Browser
Test Template    Invalid Login
Test Timeout    2s

*** Test Cases ***          username         password
Enter correct password      kumar@gmail.com  74578757
*** Keywords ***
Invalid login
	 [Arguments]    ${username}  ${password}
    Enter Username      ${username}
    Enter Password       ${password}
    Click Login