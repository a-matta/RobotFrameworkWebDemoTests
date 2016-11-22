*** Setting ***
Library               Selenium2Library
Test Setup            Go to Login Page
Test Teardown         Close All Browsers
Resource              resource.robot
*** Test Cases ***
Valid Login
                      Input Text            ${USERNAME}        demo
                      Input Password        ${PASSWORD}        mode
                      Click Button          ${LOGIN_BUTTON}
                      Location Should Be    ${WELCOME_PAGE}
                      Title Should Be       Welcome Page
