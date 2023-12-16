*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}  https://makent.trioangle.com
${browser}  chrome
${username}     kkk@gmail.com
${password}     kjkhjhgjgh



*** Keywords ***
Open my browser
	Open Browser    ${url}  ${browser}
close browser
	Close All Browsers

Enter Username
	[Arguments]    ${username}
	Input Text    name:login_email    ${username}
Enter Password
	[Arguments]    ${password}
	Input Text    name:login_password     ${password}

click Login
	Click Element            xpath://input[@type="submit"]
page shoudl
	page


