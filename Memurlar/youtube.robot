*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem

*** Test Cases ***
Navigate to Website and Get Texts from h5 Elements

    Open Browser    https://www.youtube.com/@sdetpavan/videos   chrome
    ${elements}    Get WebElements    id:video-title-link
    ${counter}=    Set Variable    0
    #WHILE   ${counter} < 7
        FOR    ${element}    IN    @{elements}
        ${link}    Get Element Attribute    ${element}    href
        ${title}    Get Element Attribute    ${element}    title
        ${label}    Get Element Attribute    ${element}    aria-label

        #log to console    ${label}
        log to console    ${title}
        log to console    ${link}
        END
        ${counter}=    Evaluate    ${counter} + 1
    #END
