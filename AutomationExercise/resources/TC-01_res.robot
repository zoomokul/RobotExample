*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    BuiltIn
Library    faker

*** Keywords ***
Launch Browser
    Open Browser  http://automationexercise.com  chrome

Navigate to URL
    Go To  http://automationexercise.com

Verify Home Page Is Visible
    Page Should Contain  Automation Exercise

Click Sign Up
    click link    Signup / Login

Click Sign Up Button
    click button    Signup

Verify 'New User Signup!' is visible
    Element Should Contain  xpath://h2[text()='New User Signup!']  New User Signup!
Verify that 'ENTER ACCOUNT INFORMATION' is visible
    Element Should Contain  xpath://b[text()='Enter Account Information']  ENTER ACCOUNT INFORMATION

Enter Name
    ${random_name}=    Run    python -c "from faker import Faker; faker = Faker(); print(faker.name())"
    Input Text  css:input[data-qa='signup-name']       ${random_name}

Enter Mail
    ${random_email}=    Run    python -c "from faker import Faker; faker = Faker(); print(faker.email())"
    Input Text  css:input[data-qa='signup-email']       ${random_email}
