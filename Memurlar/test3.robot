*** Settings ***
Library    String
Library    BuiltIn
Library    faker
Library    OperatingSystem
Resource    RandomNameGenerator.robot

*** Test Cases ***
Generate Random Email
    ${random_string}=    Generate Random String    10    [LETTERS]
    ${random_number}=    Generate Random String    4    [NUMBERS]
    ${email}=    Catenate    ${random_string}@example.com    # Replace 'example.com' with your desired domain
    log to console    ${email}
Generate Random Name Example
    ${random_name}=    Run    python -c "from faker import Faker; faker = Faker(); print(faker.name())"
    ${random_email}=    Run    python -c "from faker import Faker; faker = Faker(); print(faker.email())"
    log to console    ${random_name}
    log to console    ${random_email}
Use Random Name
    ${name2}=    Generate Random Name
    log to console    ${name2}