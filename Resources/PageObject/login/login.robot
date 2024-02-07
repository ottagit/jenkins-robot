*** Settings ***
Library  SeleniumLibrary
Resource  ../../../Data/data.robot

*** Keywords ***
User loads site
    go to  ${LOGIN_URL}

User maximizes browser
    MAXIMIZE BROWSER WINDOW

User verifies site Loads
    wait until page contains    Test Login    3s

User inputs valid username
    [Arguments]  ${username_field}  ${username}
    click element    ${username_field}
    sleep    2s
    input text     ${username_field}    ${username}

User inputs valid password
    [Arguments]  ${username_field}  ${username}
    click element    ${password_field}
    sleep    2s
    input text    ${password_field}     ${password}

User clicks submit button
    submit form    ${submit_button}
    sleep    2s
User is redirected to MS sign in page
    go to    ${login_success__url}
    sleep    2s
User should verify successful login
    wait until page contains    Logged In Successfully
    wait until page contains    Congratulations
    page should contain button    //*[@id="loop-container"]/div/article/div[2]/div/div/div/a