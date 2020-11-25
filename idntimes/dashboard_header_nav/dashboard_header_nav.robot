*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}    https://community.idntimes.com/
${browser}    chrome
${email}    alam.baka.99@yahoo.com
${password}    okeokeoke

*** Test Cases ***
Case 1 click menu hidup bersama corona
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://www.idntimes.com/tag/covid-19"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/HidupBersamaCorona.png
    close browser

Case 2 click menu tanya jawab
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://tanyajawab.idntimes.com"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/TanyaJawab.png
    close browser

Case 3 click menu news
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://www.idntimes.com/news"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/News.png
    close browser

Case 4 click menu business
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://www.idntimes.com/business"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/Business.png
    close browser

Case 5 click menu sport
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://www.idntimes.com/sport"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/Sport.png
    close browser

Case 6 click menu tech
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://www.idntimes.com/tech"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/Tech.png
    close browser

Case 7 click menu hype
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://www.idntimes.com/hype"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/Hype.png
    close browser

Case 8 click menu life
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://www.idntimes.com/life"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/Life.png
    close browser

Case 9 click menu health
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://www.idntimes.com/health"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/Health.png
    close browser

Case 10 click menu travel
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://www.idntimes.com/travel"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/Travel.png
    close browser

Case 11 click menu community
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://community.idntimes.com"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/dashboard_header_nav/screenshot/Community.png
    close browser
