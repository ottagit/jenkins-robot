*** Settings ***
Library  SeleniumLibrary
Resource  ../../Data/data.robot
Resource    ../../Resources/Pageobject/login/login.robot
Resource    ../../Resources/common.robot

Suite Setup    Begin Web Test
Test Setup    Insert Testing Data
Test Teardown    Cleanup Testing Data
Suite Teardown    End Web Test

*** Test Cases ***
Student successfully logs in with valid credentials
    [Tags]    Executives
    Given user loads site
    And user maximizes browser
    And user verifies site loads
    When user inputs valid username    ${username_field}    ${username[0]}
    And user inputs valid password     ${password_field}    ${password[0]}
#    And user clicks submit button
#    Then user should verify successful login