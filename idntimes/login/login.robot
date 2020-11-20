*** Settings ***
Library  SeleniumLibrary
Resource  ../init.robot

*** Variables ***
${browser}    chrome
# ${url}    https://community.idntimes.com/
${email}    gallan.widyanto@gmail.com
${password}    123456aB

*** Test Cases ***
Case 1 login fail with username and password empty
    open browser    ${url}    ${browser}
    maximize browser window
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/LoginError1.png
    close browser

# Case 2 login fail with wrong username and password
#     open browser    ${url}    ${browser}
#     maximize browser window
#     input text    name:email    ${email}
#     input text    name:password    ${password}
#     capture page screenshot    iaris/Documents/idn_media/screenshotLogin_Abnormal_1.png
#     click button    Sign In    # xpath=//button[@class="btn btn-submit"]
#     sleep    10s
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/LoginError2.png
#     close browser

# Case 3 login success with username and password correct
#     open browser    ${url}    ${browser}
#     maximize browser window
#     input text    name:email    ${email}
#     input text    name:password    ${password}
#     capture page screenshot    iaris/Documents/idn_media/screenshot/Login_Normal.png
#     click button    Sign In    # xpath=//button[@class="btn btn-submit"]
#     sleep    10s
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/LoginSuccess.png
#     close browser
