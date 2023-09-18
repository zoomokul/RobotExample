*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Navigate to url
    [Arguments]    ${url}  ${browser}
    open browser    ${url}  ${browser}
    maximize browser window
Verify title
    [Arguments]     ${page_title}
    title should be    ${page_title}
Click sign up/Login Button
    click link     Signup / Login
Input mail address
    input text    css:input[data-qa='login-email']  atest123444@gmail.com
Input password
    input text    css:input[data-qa='login-password']   atest12344
Click Login Button
     click button   css:[data-qa='login-button']
Login
    Input mail address
    Input password
    Click Login Button

