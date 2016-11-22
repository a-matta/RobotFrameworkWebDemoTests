*** Setting ***
Library               Selenium2Library
*** Test Cases ***
Valid Login
                      Open Browser                       ${SERVER}          Chrome
                      Maximize Browser Window
                      Input Text                         ${USERNAME}        demo
                      Input Password                     ${PASSWORD}        mode
                      Click Button                       ${LOGIN_BUTTON}
                      Sleep                              3
                      Location Should Be                 ${WELCOME_PAGE}
                      Title Should Be                    Welcome Page
                      Close Browser
Invalid Login
                      Open Browser                       ${SERVER}          Chrome
                      Maximize Browser Window
                      Input Text                         ${USERNAME}        demo
                      Input Password                     ${PASSWORD}        INVALID
                      Click Button                       ${LOGIN_BUTTON}
                      Location Should Be                 ${ERROR_PAGE}
                      Title Should Be                    Error Page
                      Sleep                              3
                      Close Browser
** Variables ***
${SERVER}             localhost:7272
${LOGIN_URL}          http://${SERVER}/
${WELCOME_PAGE}       http://${SERVER}/welcome.html
${ERROR_PAGE}         http://${SERVER}/error.html
${USERNAME}           xpath=//*[@id="username_field"]
${PASSWORD}           xpath=//*[@id="password_field"]
${LOGIN_BUTTON}       xpath=//*[@id="login_button"]
*** Keyword ***
