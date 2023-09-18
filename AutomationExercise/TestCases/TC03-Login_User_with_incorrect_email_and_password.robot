*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/res.robot

*** Variables ***
${url}  https://automationexercise.com
${browser}  chrome
${page_title}   Automation Exercise

*** Test Cases ***
Register User
    navigate to url     ${url}  ${browser}
    verify title    ${page_title}
    click sign up/login button
    element text should be    //h2[text()='Login to your account']    Login to your account

    #Login
    input mail address
    input password
    click login button



    element should be visible    css:p[style='color: red;']
    element text should be    //p[text()='Your email or password is incorrect!']  Your email or password is incorrect!



