*** Variables ***

# PO Global Variables
${ENVIRONMENT}  Staging
${BROWSER}    chrome

# PO Variables - Practice Test Automation Login
${LOGIN_URL}    https://practicetestautomation.com/practice-test-login/
${LOGIN_SUCCESS_URL}    https://practicetestautomation.com/logged-in-successfully/

# Login credentials
@{USERNAME}    student  incorrectUser
@{PASSWORD}    Password123  incorrectPassword

# Login form fields
${USERNAME_FIELD}    //*[@id="username"]
${PASSWORD_FIELD}    //*[@id="password"]

# Submit button
${SUBMIT_BUTTON}    //*[@id="submit"]