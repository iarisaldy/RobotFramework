*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}    https://community.idntimes.com/
${browser}    chrome
${email}    alam.baka.99@yahoo.com
${password}    okeokeoke

*** Test Cases ***
Case 1 click menu view profile
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/LoginSuccess.png
    sleep    10s
    click element    xpath=//a[@class="btn btn-default btn-xs btn-profile"][@href="https://www.idntimes.com/gallan-widyanto"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/ViewProfile.png
    close browser

Case 2 click menu redeem
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/LoginSuccess.png
    sleep    10s
    click element    xpath=//a[@class="request-redeem-nav btn btn-success"][@href="https://community.idntimes.com/dashboard/request-redeem"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/Redeem.png
    close browser

Case 3 click menu badge & reward
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/LoginSuccess.png
    sleep    10s
    click element    xpath=//a[@class="btn btn-border-red"][@href="https://community.idntimes.com/gallan-widyanto/badges"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/BadgeReward.png
    close browser

Case 4 click menu how to & FAQ
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/LoginSuccess.png
    sleep    10s
    click element    xpath=//a[@class=""][@href="https://community.idntimes.com/dashboard/how-to"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/FAQ.png
    close browser

Case 5 click menu panduan menulis
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/LoginSuccess.png
    sleep    10s
    click element    xpath=//a[@class="community-guide-nav "][@href="https://community.idntimes.com/dashboard/community-guide"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/PanduanMenulis.png
    close browser

Case 6 click menu assignment
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/LoginSuccess.png
    sleep    10s
    click element    xpath=//a[@class=""][@href="https://community.idntimes.com/dashboard/assignment-list"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/Assignment.png
    close browser

Case 7 click menu publish
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/LoginSuccess.png
    sleep    10s
    click element    xpath=//a[@class="publish-nav "][@href="https://community.idntimes.com/dashboard/article/publish/1"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/Publish.png
    close browser

Case 8 click menu draft
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/LoginSuccess.png
    sleep    10s
    click element    xpath=//a[@class="draft-nav "][@href="https://community.idntimes.com/dashboard/article/draft/1"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/Draft.png
    close browser

Case 9 click menu pending
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/LoginSuccess.png
    sleep    10s
    click element    xpath=//a[@class="pending-nav "][@href="https://community.idntimes.com/dashboard/article/pending/1"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/Pending.png
    close browser

Case 10 click menu rejected
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/LoginSuccess.png
    sleep    10s
    click element    xpath=//a[@class="rejected-nav "][@href="https://community.idntimes.com/dashboard/article/rejected/1"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/Rejected.png
    close browser

Case 11 click menu revision
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/LoginSuccess.png
    sleep    10s
    click element    xpath=//a[@class="revision-nav "][@href="https://community.idntimes.com/dashboard/article/revision/1"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/Revision.png
    close browser

Case 12 click menu redeem history
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/LoginSuccess.png
    sleep    10s
    click element    xpath=//a[@class="redeem-history-nav "][@href="https://community.idntimes.com/dashboard/redeem-history/all/1"]
    sleep    10s
    capture page screenshot    /media/senju/Data Kantor/python/idn_media/screenshot/RedeemHistory.png
    close browser
