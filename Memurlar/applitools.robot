*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://testautomationu.applitools.com/
${browser}  chrome
*** Test Cases ***
Get data from website
    open browser  ${url}    ${browser}
    maximize browser window
    scroll element into view    xpath://button[text()='All Courses']
    click element    xpath://button[text()='All Courses']
    ${cards_text}    Get WebElements    css:[class='card-text']
    FOR    ${card_text}   IN    @{cards_text}
    #scroll element into view    ${card_text}
    ${text}     get text   ${card_text}
    log to console    ${text}\n
    END


*** Keywords ***
