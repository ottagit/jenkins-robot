*** Settings ***
Library  SeleniumLibrary
Resource  ../../Data/data.robot
Resource    ../../Resources/PageObject/maker/login.robot
Resource    ../../Resources/common.robot

Suite Setup    Begin Web Test
Test Setup    Insert Testing Data
Test Teardown    Cleanup Testing Data
Suite Teardown    End Web Test

*** Test Cases ***
Maker logs in to Loyalty Aggregator portal
    Given maker loads site
    And maximize browser window
    And maker verifies site loads
    When maker enters corporate account number
    And maker enters corporate account email
    And maker inputs corporate login password
    And maker clicks send otp button
    And maker clicks login button