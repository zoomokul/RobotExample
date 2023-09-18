*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem

*** Test Cases ***
Navigate to Website and Get Texts from h5 Elements
   ${file_path}    Set Variable    Memurlar/result.txt
    Open Browser    https://www.memurlar.net/sonhaberler/   chrome
    ${elements}    Get WebElements    css:[role='article']
    remove file    ${file_path}
    FOR    ${element}    IN    @{elements}
    ${link}    Get Element Attribute    ${element}    href
    ${title}    Get Element Attribute    ${element}    title
    Append To File    ${file_path}    ${title}\n
    Append To File    ${file_path}    ${link}\n

    #log to console    ${title}
    #log to console    ${link}
    END

