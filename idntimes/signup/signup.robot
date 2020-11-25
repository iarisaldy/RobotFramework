*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}    https://community.idntimes.com/
${browser}    chrome
${email}    alam.baka.99@yahoo.com
${password}    okeokeoke

*** Test Cases ***
Case 1 signup fail with all field empty
    open browser    ${url}    ${browser}
    maximize browser window
    sleep    10s
    click element    xpath=//a[@href="#signup"]
    sleep    10s
    click button    Sign Up    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/signup/screenshot/SignupError1.png
    close browser

Case 2 signup success
    open browser    ${url}    ${browser}
    maximize browser window
    sleep    10s
    click element    xpath=//a[@href="#signup"]
    input text    name:nama    Gallan
    sleep    10s
    input text    xpath=(//input[@name='email'])[2]    ${email}
    input text    xpath=(//input[@name='password'])[2]    ${password}
    input text    name:passwordConf    sayaGallan123
    sleep    10s
    click button    Sign Up    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/signup/screenshot/SignupSuccess.png
    close browser

Case 3 signup fail with email is registered
    open browser    ${url}    ${browser}
    maximize browser window
    sleep    10s
    click element    xpath=//a[@href="#signup"]
    input text    name:nama    Gallan
    sleep    10s
    input text    xpath=(//input[@name='email'])[2]    ${email}
    input text    xpath=(//input[@name='password'])[2]    ${password}
    input text    name:passwordConf    sayaGallan123
    sleep    10s
    click button    Sign Up    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/signup/screenshot/SignupError2.png
    close browser
