*** Settings ***
Library    RandomNameGenerator.py

*** Keywords ***
Use Random Name
    ${name1}=    RandomNameGenerator.generate random name
    [Return]    ${name1}
