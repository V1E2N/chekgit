*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${login_url}    https://www.saucedemo.com/

*** Keywords ***
Open my browser
	Open Browser    ${login_url}    ${browser}
	Maximize Browser Window
close browsers
	Close All Browsers

Open login page
	Go To    ${login_url}

Input username
	[Arguments]     ${username}
	Input Text    id:user-name  ${username}

Input Password
	[Arguments]    ${password}
	Input Text    id:password   ${password}

click login button
	Click Element    id:login-button

click nav buton
	Click Element       xpath://button[@id="react-burger-menu-btn"]

cllick logout button
	Click Element    xpath://button[@id="logout_sidebar_link"]


Invalid user and password
	Page Should Contain     Epic sadface: Username and password do not match any user in this service


