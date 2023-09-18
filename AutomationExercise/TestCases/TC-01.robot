*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/TC-01_res.robot
*** Variables ***

*** Test Cases ***
Create Account
    [Documentation]  Test case to create an account
    Launch Browser
    Navigate to URL
    maximize browser window
    Verify Home Page Is Visible
    Click Sign Up
    Verify 'New User Signup!' is visible
    Enter Name
    Enter Mail
    Click Sign Up Button
    Verify that 'ENTER ACCOUNT INFORMATION' is visible

