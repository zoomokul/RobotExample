*** Settings ***
Library  SeleniumLibrary
Variables    ../Locators/locator.py
Variables    ../TestData/data.py

*** Variables ***
@{LanguageList}  Java   Python  Kotlin  JavaScript  C++

*** Test Cases ***
Search text on google
    @{textList}=    Create List
    log to console  \n
    FOR  ${element}  IN  @{LanguageList}

    open browser    ${site_url}     ${browser}
    maximize browser window
    input text    ${google_search_box}   ${element}
    press keys    ${google_search_box}      ENTER
    wait until element is visible    ${search_result}
    capture element screenshot  ${search_result}
    ${result}=   get text    ${search_result}
    log to console  ${element}
    log to console  ${result}

    close browser

    END


*** Keywords ***