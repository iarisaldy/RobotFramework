*** Settings ***
Library  SeleniumLibrary
Resource  ../init.robot

*** Variables ***
${browser}    chrome
#${url}    https://community.idntimes.com/
${email}    gallan.widyanto@gmail.com
${password}    123456aB

*** Test Cases ***
Case 1 signup fail with all field empty
    open browser    ${url}    ${browser}
    maximize browser window
    sleep    10s
    click element    xpath=//a[@href="#signup"]
    sleep    10s
    click button    Sign Up    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/SignupError1.png
    close browser

# Case 2 signup success
#     open browser    ${url}    ${browser}
#     maximize browser window
#     sleep    10s
#     click element    xpath=//a[@href="#signup"]
#     input text    name:nama    Gallan
#     sleep    10s
#     input text    xpath=(//input[@name='email'])[2]    ${email}
#     input text    xpath=(//input[@name='password'])[2]    ${password}
#     input text    name:passwordConf    sayaGallan123
#     sleep    10s
#     click button    Sign Up    # xpath=//button[@class="btn btn-submit"]
#     sleep    10s
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/SignupSuccess.png
#     close browser

# Case 3 signup fail with email is registered
#     open browser    ${url}    ${browser}
#     maximize browser window
#     sleep    10s
#     click element    xpath=//a[@href="#signup"]
#     input text    name:nama    Gallan
#     sleep    10s
#     input text    xpath=(//input[@name='email'])[2]    ${email}
#     input text    xpath=(//input[@name='password'])[2]    ${password}
#     input text    name:passwordConf    sayaGallan123
#     sleep    10s
#     click button    Sign Up    # xpath=//button[@class="btn btn-submit"]
#     sleep    10s
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/SignupError2.png
#     close browser
