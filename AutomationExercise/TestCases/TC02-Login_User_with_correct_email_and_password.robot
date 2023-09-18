*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Register User
    navigate to url
    title should be    Automation Exercise
    click link     Signup / Login
    element text should be    //h2[text()='Login to your account']    Login to your account


    input text    css:input[data-qa='login-email']  atest12344@gmail.com
    input text    css:input[data-qa='login-password']   atest12344
    click button   css:[data-qa='login-button']


    element should be visible  //a[text()=' Logged in as ']
    element text should be    //b[text()='atest12344']  atest12344










*** Keywords ***
Navigate to url
    open browser    https://automationexercise.com  chrome
    maximize browser window
