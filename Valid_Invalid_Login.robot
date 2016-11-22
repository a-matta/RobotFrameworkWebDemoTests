*** Setting ***
Library                          Selenium2Library
Test Setup                       Go to Login Page
Test Teardown                    Close All Browsers
*** Test Cases ***
Valid Login
                                 Input Text                         ${USERNAME}          demo
                                 Input Password                     ${PASSWORD}          mode
                                 Click Button                       ${LOGIN_BUTTON}
                                 Location Should Be                 ${WELCOME_PAGE}
                                 Title Should Be                    Welcome Page
Invalid Password
                                 Invalid Login                      demo                 invalid
Invalid Username
                                 Invalid Login                      demo1                mode
Invalid Username and Password
                                 Invalid Login                      invalid              invalid
Empty Password
                                 Invalid Login                      demo                 ${EMPTY}
Empty Username
                                 Invalid Login                      ${EMPTY}             mode
Empty Username and Password
                                 Invalid Login                      ${EMPTY}             ${EMPTY}
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
                                 Open Browser                       ${SERVER}            Chrome
                                 Maximize Browser Window
Invalid Login
                                 [Arguments]                        ${param_username}    ${param_password}
                                 Input Text                         ${USERNAME}          ${param_username}
                                 Input Password                     ${PASSWORD}          ${param_password}
                                 Click Button                       ${LOGIN_BUTTON}
                                 Location Should Be                 ${ERROR_PAGE}
                                 Title Should Be                    Error Page
