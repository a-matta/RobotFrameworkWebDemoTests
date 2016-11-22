*** Setting ***
Library                          Selenium2Library
Test Setup                       Go to Login Page
Test Teardown                    Close All Browsers
Resource                         resource.robot
*** Test Cases ***
Invalid Password
                                 Invalid Login         demo                 invalid
Invalid Username
                                 Invalid Login         demo1                mode
Invalid Username and Password
                                 Invalid Login         invalid              invalid
Empty Password
                                 Invalid Login         demo                 ${EMPTY}
Empty Username
                                 Invalid Login         ${EMPTY}             mode
Empty Username and Password
                                 Invalid Login         ${EMPTY}             ${EMPTY}

*** Keyword ***
Invalid Login
                                 [Arguments]           ${param_username}    ${param_password}
                                 Input Text            ${USERNAME}          ${param_username}
                                 Input Password        ${PASSWORD}          ${param_password}
                                 Click Button          ${LOGIN_BUTTON}
                                 Location Should Be    ${ERROR_PAGE}
                                 Title Should Be       Error Page
