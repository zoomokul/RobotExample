*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Navigate to Arabam.com
    Open Browser    https://www.arabam.com/ikinci-el/otomobil-izmir-sahibinden?days=1    chrome
    Maximize Browser Window

    #${rows}    Get WebElements    css:[id^="listing"]
    ${models}    Get WebElements    css:td.listing-modelname.pr > h3 > div

     FOR    ${model}    IN    @{models}
     ${text}    Get Text    ${model}


    log to console     ${text}

    END
    Close Browser
