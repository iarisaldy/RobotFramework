*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}    https://community.idntimes.com/
${browser}    chrome
${email}    alam.baka.99@yahoo.com
${password}    okeokeoke

*** Test Cases ***
Case 1 login fail with username and password empty
    open browser    ${url}    ${browser}
    maximize browser window
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/login/screenshot/LoginError1.png
    close browser

Case 2 login fail with wrong username and password
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/login/screenshot/screenshotLogin_Abnormal_1.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/login/screenshot/screenshot/LoginError2.png
    close browser

Case 3 login success with username and password correct
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/login/screenshot/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/login/screenshot/screenshot/LoginSuccess.png
    close browser

Case 4 login Gmail success 
    open browser    ${url}    ${browser}
    maximize browser window
    click element    xpath=//img[@alt='GOOGLE']
    sleep    5s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/login/screenshot/LoginGmailSuccess.png
    close browser

Case 5 login Facebook success 
    open browser    ${url}    ${browser}
    maximize browser window
    click element    xpath=//img[@alt='FACEBOOK']
    sleep    5s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/login/screenshot/LoginFacebookSuccess.png
    close browser