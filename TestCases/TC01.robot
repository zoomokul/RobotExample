*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.google.com
${browser}  chrome
*** Test Cases ***
LoginTest
    launchBrowser
    ${loc}=     get location
    log to console  ${loc}
    set selenium implicit wait    3 seconds
    wait until page contains    ${url}
    title should be    Google
    input text  name:q    robotframework
    click button    class:gNO89b

*** Keywords ***
launchBrowser
    open browser    ${url}  ${browser}
    maximize browser window