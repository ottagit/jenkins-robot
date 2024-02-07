*** Settings ***
Library  SeleniumLibrary
Resource  ../../Data/data.robot
Resource    ../../Resources/Pageobject/execLogin.robot
Resource    ../../Resources/common.robot

Suite Setup    Begin Web Test
Test Setup    Insert Testing Data
Test Teardown    Cleanup Testing Data
Suite Teardown    End Web Test

*** Test Cases ***
Executive user can log in with valid AD credentials
    [Tags]    Executive
    Given user loads site
    And user maximizes browser
    And user verifies site loads
    When user clicks login button
    Then user is redirected to ms sign in page
    When user clicks next login button
    Then user should verify otp returned