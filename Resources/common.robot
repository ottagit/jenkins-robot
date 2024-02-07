*** Settings ***
Library    SeleniumLibrary
Resource    ../Data/data.robot

*** Keywords ***

Begin Web Test
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${options}   add_argument    --disable-popup-blocking
    Call Method    ${options}   add_argument    --ignore-certificate-errors
    Open Browser    about:blank    ${BROWSER}    options=${options}
    # IgnoreCertificateErrors
#    ${chrome_options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
#    Call Method    ${chrome_options}    add_argument    --ignore-certificate-errors
#    Create Webdriver    Chrome    chrome    chrome_options=${chrome_options}

End Web Test
    Close Browser

Insert Testing Data
    Log    I am inserting test data ...

Cleanup Testing Data
    Log    I am cleaning up test data ...
