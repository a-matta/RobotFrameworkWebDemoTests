*** Setting ***
Library                          Selenium2Library
Test Setup                       Go to Login Page
Test Teardown                    Close All Browsers
*** Test Cases ***
Valid Login
                                 Input Text                         ${USERNAME}        demo
                                 Input Password                     ${PASSWORD}        mode
                                 Click Button                       ${LOGIN_BUTTON}
                                 Location Should Be                 ${WELCOME_PAGE}
                                 Title Should Be                    Welcome Page
Invalid Password
                                 Input Text                         ${USERNAME}        demo
                                 Input Password                     ${PASSWORD}        INVALID
                                 Click Button                       ${LOGIN_BUTTON}
                                 Location Should Be                 ${ERROR_PAGE}
                                 Title Should Be                    Error Page
Invalid Username
                                 Input Text                         ${USERNAME}        demo1
                                 Input Password                     ${PASSWORD}        mode
                                 Click Button                       ${LOGIN_BUTTON}
                                 Location Should Be                 ${ERROR_PAGE}
                                 Title Should Be                    Error Page
Invalid Username and Password
                                 Input Text                         ${USERNAME}        demo1
                                 Input Password                     ${PASSWORD}        INVALID
                                 Click Button                       ${LOGIN_BUTTON}
                                 Location Should Be                 ${ERROR_PAGE}
                                 Title Should Be                    Error Page
Empty Password
                                 Input Text                         ${USERNAME}        demo
                                 Input Password                     ${PASSWORD}        ${EMPTY}
                                 Click Button                       ${LOGIN_BUTTON}
                                 Location Should Be                 ${ERROR_PAGE}
                                 Title Should Be                    Error Page
Empty Username
                                 Input Text                         ${USERNAME}        ${EMPTY}
                                 Input Password                     ${PASSWORD}        mode
                                 Click Button                       ${LOGIN_BUTTON}
                                 Location Should Be                 ${ERROR_PAGE}
                                 Title Should Be                    Error Page
Empty Username and Password
                                 Input Text                         ${USERNAME}        ${EMPTY}
                                 Input Password                     ${PASSWORD}        ${EMPTY}
                                 Click Button                       ${LOGIN_BUTTON}
                                 Location Should Be                 ${ERROR_PAGE}
                                 Title Should Be                    Error Page
** Variables ***
${SERVER}                        localhost:7272
${LOGIN_URL}                     http://${SERVER}/
${WELCOME_PAGE}                  http://${SERVER}/welcome.html
${ERROR_PAGE}                    http://${SERVER}/error.html
${USERNAME}                      xpath=//*[@id="username_field"]
${PASSWORD}                      xpath=//*[@id="password_field"]
${LOGIN_BUTTON}                  xpath=//*[@id="login_button"]
*** Keyword ***
Go to Login Page
                                 Open Browser                       ${SERVER}          Chrome
                                 Maximize Browser Window