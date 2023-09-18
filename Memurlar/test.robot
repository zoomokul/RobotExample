*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem

*** Test Cases ***
Navigate to Website and Get Texts from h5 Elements
   ${file_path}    Set Variable    Memurlar/result.txt
    Open Browser    https://www.memurlar.net/sonhaberler/   chrome
    ${elements}    Get WebElements    css:[class='h5']
    remove file    ${file_path}
    FOR    ${element}    IN    @{elements}
    ${text}    Get Text    ${element}
    Append To File    ${file_path}    ${text}\n

    log to console    ${text}
    END

