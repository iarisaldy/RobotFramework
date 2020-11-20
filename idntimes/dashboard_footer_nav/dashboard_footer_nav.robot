*** Settings ***
Library  SeleniumLibrary
Resource  ../init.robot

*** Variables ***
${browser}    chrome
#${url}    https://community.idntimes.com/
${email}    gallan.widyanto@gmail.com
${password}    123456aB

*** Test Cases ***
Case 1 click menu about us
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://www.idntimes.com/about-us"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/AboutUs.png
    close browser

Case 2 click menu career
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://www.idn.media/career#hire"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/Career.png
    close browser

Case 3 click menu privacy policy
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://www.idntimes.com/kebijakan-privasi"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/PrivacyPolicy.png
    close browser

Case 4 click menu pedoman media siber
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://www.idntimes.com/pedoman-media-siber"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/PedomanMediaSiber.png
    close browser

Case 5 click menu contact us
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://www.idntimes.com/hubungi-kami"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/ContactUs.png
    close browser
