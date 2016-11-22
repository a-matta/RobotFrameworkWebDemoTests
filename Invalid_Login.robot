*** Setting ***
Library                                       Selenium2Library
Test Setup                                    Go to Login Page
Test Teardown                                 Close All Browsers
Resource                                      resource.robot
*** Test Cases ***
Invalid Password
                                              Login With Invalid Credentials Should Fail    demo                 invalid
Invalid Username
                                              Login With Invalid Credentials Should Fail    demo1                mode
Invalid Username and Password
                                              Login With Invalid Credentials Should Fail    invalid              invalid
Empty Password
                                              Login With Invalid Credentials Should Fail    demo                 ${EMPTY}
Empty Username
                                              Login With Invalid Credentials Should Fail    ${EMPTY}             mode
Empty Username and Password
                                              Login With Invalid Credentials Should Fail    ${EMPTY}             ${EMPTY}

*** Keyword ***
Login With Invalid Credentials Should Fail
                                              [Arguments]                                   ${param_username}    ${param_password}
                                              Input Text                                    ${USERNAME}          ${param_username}
                                              Input Password                                ${PASSWORD}          ${param_password}
                                              Click Button                                  ${LOGIN_BUTTON}
                                              Location Should Be                            ${ERROR_PAGE}
                                              Title Should Be                               Error Page
