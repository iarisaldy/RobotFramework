*** Settings ***
Library  SeleniumLibrary
Resource  ../init.robot

*** Variables ***
${browser}    chrome
${email}    alam.baka.99@yahoo.com
${password}    okeokeoke

*** Test Cases ***

Case 1 login Email success with username and password correct
    open browser    ${url}    ${browser}
    maximize browser window
    input text  name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    iaris/Documents/idn_media/screenshot/Login.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    5s
    capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/LoginEmailSuccess.png
    close browser

# Case 2 login Gmail success 
#     open browser    ${url}    ${browser}
#     maximize browser window
#     click element    xpath=//img[@alt='GOOGLE']
#     sleep    5s
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/LoginGmailSuccess.png
#     close browser

# Case 3 login Facebook success 
#     open browser    ${url}    ${browser}
#     maximize browser window
#     click element    xpath=//img[@alt='FACEBOOK']
#     sleep    5s
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/LoginFacebookSuccess.png
#     close browser

# Case 4 Open Create artikel
#     open browser    ${url}    ${browser}
#     maximize browser window
#     input text    name:email    ${email}
#     input text    name:password    ${password}
#     click button    Sign In    # xpath=//button[@class="btn btn-submit"]
#     sleep    10s
#     click element    xpath=//i[@class="idn-mini-icon idn-write"]
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/OpenCreateArtikelSuccess.png
#     sleep    10s
#     close browser

# Case 5 Create artikel to Draft
#     open browser    ${url}    ${browser}
#     maximize browser window
#     input text    name:email    ${email}
#     input text    name:password    ${password}
#     click button    Sign In    # xpath=//button[@class="btn btn-submit"]
#     sleep    10s
#     click element    xpath=//i[@class="idn-mini-icon idn-write"]
#     sleep    10s
#     click element    xpath=//label[@class="app__tab-label___369hK"]
#     sleep    5s
#     click element    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[1]/div/ul/li[1]/p
#     sleep    5s
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/PilihTopic.png
#     input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[2]/div/div/div/div/h1   robot
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/IsiJudul.png
#     sleep    5s
#     input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[3]/div/div/div/div/p   framework
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/IsiCuplikan.png
#     sleep    5s
#     click button    Sisipkan Gambar    # xpath=//button[@class="ImageStyles__btn-open-image___2eOGp"]
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/PopupSisipkanGambar.png
#     sleep    5s
#     click element    xpath=//*[@id="delete-image"]/div[1]/div/img
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/BerhasilSisipkanGambar.png
#     sleep    5s
#     select frame    xpath=//div[@class='mce-edit-area mce-container mce-panel mce-stack-layout-item']/iframe
#     input text    xpath=//*[@id="tinymce"]/p   coba dengan senyuman
#     unselect frame
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/IsiDiskripsi.png
#     sleep    5s
#     click button    Save as draft    # xpath=//button[@class="app__btn-action___2JQU-"]
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/SaveToDraft.png
#     sleep    5s
#     close browser

# Case 6 Create artikel to draft end preview
#     open browser    ${url}    ${browser}
#     maximize browser window
#     input text    name:email    ${email}
#     input text    name:password    ${password}
#     click button    Sign In    # xpath=//button[@class="btn btn-submit"]
#     sleep    10s
#     click element    xpath=//i[@class="idn-mini-icon idn-write"]
#     sleep    10s
#     click element    xpath=//label[@class="app__tab-label___369hK"]
#     sleep    5s
#     click element    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[1]/div/ul/li[1]/p
#     sleep    5s
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/PilihTopic.png
#     input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[2]/div/div/div/div/h1   robot
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/IsiJudul.png
#     sleep    5s
#     input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[3]/div/div/div/div/p   framework
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/IsiCuplikan.png
#     sleep    5s
#     click button    Sisipkan Gambar    # xpath=//button[@class="ImageStyles__btn-open-image___2eOGp"]
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/PopupSisipkanGambar.png
#     sleep    5s
#     click element    xpath=//*[@id="delete-image"]/div[1]/div/img
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/BerhasilSisipkanGambar.png
#     sleep    5s
#     select frame    xpath=//div[@class='mce-edit-area mce-container mce-panel mce-stack-layout-item']/iframe
#     input text    xpath=//*[@id="tinymce"]/p   coba dengan senyuman
#     unselect frame
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/IsiDiskripsi.png
#     sleep    5s
#     click button    Save as draft    # xpath=//button[@class="app__btn-action___2JQU-"]
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/SaveToDraft.png
#     sleep    5s
#     close browser

# Case 7 Create artikel to Editorial
#     open browser    ${url}    ${browser}
#     maximize browser window
#     input text    name:email    ${email}
#     input text    name:password    ${password}
#     click button    Sign In    # xpath=//button[@class="btn btn-submit"]
#     sleep    10s
#     click element    xpath=//i[@class="idn-mini-icon idn-write"]
#     sleep    10s
#     click element    xpath=//label[@class="app__tab-label___369hK"]
#     sleep    5s
#     click element    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[1]/div/ul/li[1]/p
#     sleep    5s
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/PilihTopic.png
#     input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[2]/div/div/div/div/h1   robot
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/IsiJudul.png
#     sleep    5s
#     input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[3]/div/div/div/div/p   framework
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/IsiCuplikan.png
#     sleep    5s
#     click button    Sisipkan Gambar    # xpath=//button[@class="ImageStyles__btn-open-image___2eOGp"]
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/PopupSisipkanGambar.png
#     sleep    5s
#     click element    xpath=//*[@id="delete-image"]/div[1]/div/img
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/BerhasilSisipkanGambar.png
#     sleep    5s
#     select frame    xpath=//div[@class='mce-edit-area mce-container mce-panel mce-stack-layout-item']/iframe
#     input text    xpath=//*[@id="tinymce"]/p   coba dengan senyuman
#     unselect frame
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/IsiDiskripsi.png
#     sleep    5s
#     click button    Save as draft    # xpath=//button[@class="app__btn-action___2JQU-"]
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/SaveToDraft.png
#     sleep    5s
#     close browser

# Case 8 Edit Artikel to Draft
#     open browser    ${url}    ${browser}
#     maximize browser window
#     input text    name:email    ${email}
#     input text    name:password    ${password}
#     click button    Sign In    # xpath=//button[@class="btn btn-submit"]
#     sleep    10s
#     click element    xpath=//i[@class="idn-mini-icon idn-write"]
#     sleep    10s
#     click element    xpath=//label[@class="app__tab-label___369hK"]
#     sleep    5s
#     click element    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[1]/div/ul/li[1]/p
#     sleep    5s
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/PilihTopic.png
#     input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[2]/div/div/div/div/h1   robot
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/IsiJudul.png
#     sleep    5s
#     input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[3]/div/div/div/div/p   framework
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/IsiCuplikan.png
#     sleep    5s
#     click button    Sisipkan Gambar    # xpath=//button[@class="ImageStyles__btn-open-image___2eOGp"]
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/PopupSisipkanGambar.png
#     sleep    5s
#     click element    xpath=//*[@id="delete-image"]/div[1]/div/img
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/BerhasilSisipkanGambar.png
#     sleep    5s
#     select frame    xpath=//div[@class='mce-edit-area mce-container mce-panel mce-stack-layout-item']/iframe
#     input text    xpath=//*[@id="tinymce"]/p   coba dengan senyuman
#     unselect frame
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/IsiDiskripsi.png
#     sleep    5s
#     click button    Save as draft    # xpath=//button[@class="app__btn-action___2JQU-"]
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/SaveToDraft.png
#     sleep    5s
#     close browser

# Case 9 Edit Artikel to Editorial
#     open browser    ${url}    ${browser}
#     maximize browser window
#     input text    name:email    ${email}
#     input text    name:password    ${password}
#     click button    Sign In    # xpath=//button[@class="btn btn-submit"]
#     sleep    10s
#     click element    xpath=//i[@class="idn-mini-icon idn-write"]
#     sleep    10s
#     click element    xpath=//label[@class="app__tab-label___369hK"]
#     sleep    5s
#     click element    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[1]/div/ul/li[1]/p
#     sleep    5s
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/PilihTopic.png
#     input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[2]/div/div/div/div/h1   robot
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/IsiJudul.png
#     sleep    5s
#     input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[3]/div/div/div/div/p   framework
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/IsiCuplikan.png
#     sleep    5s
#     click button    Sisipkan Gambar    # xpath=//button[@class="ImageStyles__btn-open-image___2eOGp"]
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/PopupSisipkanGambar.png
#     sleep    5s
#     click element    xpath=//*[@id="delete-image"]/div[1]/div/img
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/BerhasilSisipkanGambar.png
#     sleep    5s
#     select frame    xpath=//div[@class='mce-edit-area mce-container mce-panel mce-stack-layout-item']/iframe
#     input text    xpath=//*[@id="tinymce"]/p   coba dengan senyuman
#     unselect frame
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/IsiDiskripsi.png
#     sleep    5s
#     click button    Save as draft    # xpath=//button[@class="app__btn-action___2JQU-"]
#     capture page screenshot    /Users/iaris/Documents/idn_media/screenshot/SaveToDraft.png
#     sleep    5s
#     close browser

