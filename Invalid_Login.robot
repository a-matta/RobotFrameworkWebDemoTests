*** Setting ***
Library                                       Selenium2Library
Test Setup                                    Go to Login Page
Test Teardown                                 Close All Browsers
Test Template                                 Login With Invalid Credentials Should Fail
Resource                                      resource.robot
*** Test Cases ***
Invalid Password                              demo                                          invalid
Invalid Username                              demo1                                         mode
Invalid Username and Password                 invalid                                       invalid
Empty Password                                demo                                          ${EMPTY}
Empty Username                                ${EMPTY}                                      mode
Empty Username and Password                   ${EMPTY}                                      ${EMPTY}
*** Keyword ***
Login With Invalid Credentials Should Fail
                                              [Arguments]                                   ${param_username}    ${param_password}
                                              Input Text                                    ${USERNAME}          ${param_username}
                                              Input Password                                ${PASSWORD}          ${param_password}
                                              Click Button                                  ${LOGIN_BUTTON}
                                              Location Should Be                            ${ERROR_PAGE}
                                              Title Should Be                               Error Page
