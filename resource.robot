*** Setting ***
Library             Selenium2Library
*** Keyword ***
Go to Login Page
                    Open Browser                       ${SERVER}    Chrome
                    Maximize Browser Window

** Variables ***
${SERVER}           localhost:7272
${LOGIN_URL}        http://${SERVER}/
${WELCOME_PAGE}     http://${SERVER}/welcome.html
${ERROR_PAGE}       http://${SERVER}/error.html
${USERNAME}         xpath=//*[@id="username_field"]
${PASSWORD}         xpath=//*[@id="password_field"]
${LOGIN_BUTTON}     xpath=//*[@id="login_button"]
