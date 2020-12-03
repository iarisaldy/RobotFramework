*** Settings ***
Library  Selenium2Library

*** Variables ***
${url}    https://community.idntimes.com/
${browser}    chrome
${email}    alam.baka.99@yahoo.com
${password}    okeokeoke
${email_registrasi}    iarisaldy@gmail.com
${password_registrasi}    okeokeoke

*** Test Cases ***

Case 1 Open Halaman Create QnA
    open browser    ${url}    ${browser}
    maximize browser window
    #Login
    input text    name:email    ${email}
    input text    name:password    ${password}
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    #masuk halaman create QnA
    sleep    10s
    wait until element is visible   xpath=//i[@class="idn-mini-icon idn-qna"]
    click element    xpath=//i[@class="idn-mini-icon idn-qna"]
    close browser

Case 1 Open Halaman Create QnA
    open browser    ${url}    ${browser}
    maximize browser window
    #Login
    input text    name:email    ${email}
    input text    name:password    ${password}
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    #masuk halaman create QnA
    sleep    10s
    wait until element is visible   xpath=//i[@class="idn-mini-icon idn-qna"]
    click element    xpath=//i[@class="idn-mini-icon idn-qna"]
    #buat pertanyaan
    close browser