*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}    https://community.idntimes.com/
${browser}    chrome
${email}    alam.baka.99@yahoo.com
${password}    okeokeoke
${email_registrasi}    iarisaldy@gmail.com
${password_registrasi}    okeokeoke

*** Test Cases ***

Case 1 login Email success with username and password correct
    open browser    ${url}    ${browser}
    maximize browser window
    input text  name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/screenshot/Login.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    5s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginEmailSuccess.png
    close browser

Case 2 login Gmail success 
    open browser    ${url}    ${browser}
    maximize browser window
    click element    xpath=//img[@alt='GOOGLE']
    sleep    5s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginGmailSuccess.png
    close browser

Case 3 login Facebook success 
    open browser    ${url}    ${browser}
    maximize browser window
    click element    xpath=//img[@alt='FACEBOOK']
    sleep    5s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginFacebookSuccess.png
    close browser

Case 4 Open Create artikel
    open browser    ${url}    ${browser}
    maximize browser window
    #Login
    input text    name:email    ${email}
    input text    name:password    ${password}
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    #Masuk halaman create artikel
    wait until element is visible  xpath=//i[@class="idn-mini-icon idn-write"]
    click element    xpath=//i[@class="idn-mini-icon idn-write"]
    close browser

Case 5 Create artikel to Draft
    open browser    ${url}    ${browser}
    maximize browser window
    #Login
    input text    name:email    ${email}
    input text    name:password    ${password}
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    #Masuk halaman create artikel
    wait until element is visible  xpath=//i[@class="idn-mini-icon idn-write"]
    click element    xpath=//i[@class="idn-mini-icon idn-write"]
    #Pilih Topic
    wait until element is visible   xpath=//label[@class="app__tab-label___369hK"]
    click element    xpath=//label[@class="app__tab-label___369hK"]
    wait until element is visible   xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[1]/div/ul/li[1]/p
    click element    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[1]/div/ul/li[1]/p
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/PilihTopic.png
    #Isi judul
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[2]/div/div/div/div/h1   robot
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiJudul.png
    sleep    5s
    #Isi Cuplikan
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[3]/div/div/div/div/p   framework
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiCuplikan.png
    sleep    5s
    #Sisipkan gambar
    click button    Sisipkan Gambar    # xpath=//button[@class="ImageStyles__btn-open-image___2eOGp"]
    capture page screenshot   /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/PopupSisipkanGambar.png
    sleep    5s
    click element    xpath=//*[@id="delete-image"]/div[1]/div/img
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/BerhasilSisipkanGambar.png
    sleep    5s
    #Isi Diskripsi
    select frame    xpath=//div[@class='mce-edit-area mce-container mce-panel mce-stack-layout-item']/iframe
    input text    xpath=//*[@id="tinymce"]/p   coba dengan senyuman
    unselect frame
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiDiskripsi.png
    sleep    5s
    #SavetoDraft
    click button    Save as draft    # xpath=//button[@class="app__btn-action___2JQU-"]
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/SaveToDraft.png
    sleep    5s

Case 6 Create artikel to draft and preview
    open browser    ${url}    ${browser}
    maximize browser window
    #Login
    input text    name:email    ${email}
    input text    name:password    ${password}
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    #Masuk halaman create artikel
    wait until element is visible  xpath=//i[@class="idn-mini-icon idn-write"]
    click element    xpath=//i[@class="idn-mini-icon idn-write"]
    #Pilih Topic
    wait until element is visible   xpath=//label[@class="app__tab-label___369hK"]
    click element    xpath=//label[@class="app__tab-label___369hK"]
    wait until element is visible   xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[1]/div/ul/li[1]/p
    click element    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[1]/div/ul/li[1]/p
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/PilihTopic.png
    #Isi judul
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[2]/div/div/div/div/h1   robot
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiJudul.png
    sleep    5s
    #Isi Cuplikan
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[3]/div/div/div/div/p   framework
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiCuplikan.png
    sleep    5s
    #Sisipkan gambar
    click button    Sisipkan Gambar    # xpath=//button[@class="ImageStyles__btn-open-image___2eOGp"]
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/PopupSisipkanGambar.png
    sleep    5s
    click element    xpath=//*[@id="delete-image"]/div[1]/div/img
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/BerhasilSisipkanGambar.png
    sleep    5s
    #Isi Diskripsi
    select frame    xpath=//div[@class='mce-edit-area mce-container mce-panel mce-stack-layout-item']/iframe
    input text    xpath=//*[@id="tinymce"]/p   coba dengan senyuman
    unselect frame
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiDiskripsi.png
    sleep    5s
    #SavetoDraft
    click button    Save as draft    # xpath=//button[@class="app__btn-action___2JQU-"]
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/SaveToDraft.png
    sleep    5s
    #Preview Artikel
    click element    xpath=//a[@class="app__btn-action___2JQU-"]
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Preview.png
    sleep    5s
    close browser

Case 7 Create full artikel to draft and preview
    open browser    ${url}    ${browser}
    maximize browser window
    #Login
    input text    name:email    ${email}
    input text    name:password    ${password}
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    #Masuk halaman create artikel
    wait until element is visible  xpath=//i[@class="idn-mini-icon idn-write"]
    click element    xpath=//i[@class="idn-mini-icon idn-write"]
    #Pilih Topic
    wait until element is visible   xpath=//label[@class="app__tab-label___369hK"]
    click element    xpath=//label[@class="app__tab-label___369hK"]
    wait until element is visible   xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[1]/div/ul/li[1]/p
    click element    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[1]/div/ul/li[1]/p
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/PilihTopic.png
    #Isi Judul
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[2]/div/div/div/div/h1   robot
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiJudul.png
    sleep    5s
    #Isi Cuplikan
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[3]/div/div/div/div/p   framework
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiCuplikan.png
    sleep    5s
    #Sisipkan Gambar
    click button    Sisipkan Gambar    # xpath=//button[@class="ImageStyles__btn-open-image___2eOGp"]
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/PopupSisipkanGambar.png
    sleep    10s
    click element    xpath=//*[@id="delete-image"]/div[1]/div/img
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/BerhasilSisipkanGambar.png
    sleep    5s
    #Isi Diskripsi
    select frame    xpath=//div[@class='mce-edit-area mce-container mce-panel mce-stack-layout-item']/iframe
    input text    xpath=//*[@id="tinymce"]/p   coba dengan senyuman
    unselect frame
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiDiskripsi.png
    sleep    5s
    #Embed Facebook
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[6]/div/div/div/h2   sub judul section 1 robot
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiSubjudul1.png
    sleep    5s
    mouse over  xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[7]/div/div/div/div[2]
    click element    xpath=//i[@class="fab fa-facebook-f"]
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[7]/div/div/input   https://www.facebook.com/KementerianKesehatanRI/photos/a.1021894937840606/3953434788019925/
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiEmbedFB.png
    sleep    5s
    #Embed Instagram
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[9]/div/div/div/h2   sub judul section 2 robot
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiSubjudul2.png
    sleep    5s
    mouse over  xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[10]/div/div/div/div[2]
    click element    xpath=//i[@class="fab fa-instagram"]
    input text    //*[@id="idn-editor"]/div/div/div[2]/div[3]/div[10]/div/div/input     https://www.instagram.com/p/CHeY6l4jLkx/?utm_source=ig_web_button_share_sheet
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiEmbedIG.png
    sleep    5s
    #Embed Twitter
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[12]/div/div/div/h2   sub judul section 3 robot
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiSubjudul3.png
    sleep    5s
    mouse over  xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[13]/div/div/div/div[2]
    click element    xpath=//i[@class="fab fa-twitter"]
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[13]/div/div/input   https://twitter.com/e100ss/status/1326491523471470593?s=20
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiEmbedTwitter.png
    sleep    5s
    #Tambah Setion
    click button    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[14]/div[2]/button
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/TambahSection.png
    sleep    10s
    #Embed Youtube
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[15]/div/div/div/h2   sub judul section 4 robot
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiSubjudul4.png
    sleep    5s
    mouse over  xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[16]/div/div/div/div[2]
    click element    xpath=//i[@class="fab fa-youtube"]
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[16]/div/div/input   https://www.youtube.com/watch?v=Q9U2rBtp7qk
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiEmbedYoutube.png
    sleep    5s
    #Save to Draft
    click button    Save as draft    # xpath=//button[@class="app__btn-action___2JQU-"]
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/SaveToDraft.png
    sleep    5s
    #Preview artikel
    click element    xpath=//a[@class="app__btn-action___2JQU-"]
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Preview.png
    sleep    5s
    close browser

Case 8 Create artikel to Editorial
    open browser    ${url}    ${browser}
    maximize browser window
    #Login
    input text    name:email    ${email}
    input text    name:password    ${password}
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    #Masuk halaman create artikel
    wait until element is visible  xpath=//i[@class="idn-mini-icon idn-write"]
    click element    xpath=//i[@class="idn-mini-icon idn-write"]
    #Pilih Topic
    wait until element is visible   xpath=//label[@class="app__tab-label___369hK"]
    click element    xpath=//label[@class="app__tab-label___369hK"]
    wait until element is visible   xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[1]/div/ul/li[1]/p
    click element    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[1]/div/ul/li[1]/p
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/PilihTopic.png
    #Isi Judul
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[2]/div/div/div/div/h1   robot
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiJudul.png
    sleep    5s
    #Isi Cuplikan
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[3]/div/div/div/div/p   framework
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiCuplikan.png
    sleep    5s
    #Sisipkan Gambar
    click button    Sisipkan Gambar    # xpath=//button[@class="ImageStyles__btn-open-image___2eOGp"]
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/PopupSisipkanGambar.png
    sleep    10s
    click element    xpath=//*[@id="delete-image"]/div[1]/div/img
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/BerhasilSisipkanGambar.png
    sleep    5s
    #Isi Diskripsi
    select frame    xpath=//div[@class='mce-edit-area mce-container mce-panel mce-stack-layout-item']/iframe
    input text    xpath=//*[@id="tinymce"]/p   coba dengan senyuman
    unselect frame
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiDiskripsi.png
    sleep    5s
    #Embed Facebook
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[6]/div/div/div/h2   sub judul section 1 robot
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiSubjudul1.png
    sleep    5s
    mouse over  xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[7]/div/div/div/div[2]
    click element    xpath=//i[@class="fab fa-facebook-f"]
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[7]/div/div/input   https://www.facebook.com/KementerianKesehatanRI/photos/a.1021894937840606/3953434788019925/
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiEmbedFB.png
    sleep    5s
    click button    xpath=//button[@class="app__add-content___1JCUP"] 
    select frame    xpath=//div[@id="mceu_35"]/iframe
    input text    xpath=//*[@id="tinymce"]/p  ini section 1
    unselect frame
    sleep    5s
    #Embed Instagram
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[9]/div/div/div/h2   sub judul section 2 robot
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiSubjudul2.png
    sleep    5s
    mouse over  xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[10]/div/div/div/div[2]
    click element    xpath=//i[@class="fab fa-instagram"]
    input text    //*[@id="idn-editor"]/div/div/div[2]/div[3]/div[10]/div/div/input     https://www.instagram.com/p/CHeY6l4jLkx/?utm_source=ig_web_button_share_sheet
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiEmbedIG.png
    sleep    5s
    click button    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[11]/div[1]/div/button
    select frame    xpath=//div[@id="mceu_54"]/iframe
    input text    xpath=//*[@id="tinymce"]/p  ini section 2
    unselect frame
    sleep    5s
    #Embed Twitter
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[12]/div/div/div/h2   sub judul section 3 robot
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiSubjudul3.png
    sleep    5s
    mouse over  xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[13]/div/div/div/div[2]
    click element    xpath=//i[@class="fab fa-twitter"]
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[13]/div/div/input   https://twitter.com/e100ss/status/1326491523471470593?s=20
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiEmbedTwitter.png
    sleep    5s
    click button    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[14]/div[1]/div/button
    select frame    xpath=//div[@id="mceu_73"]/iframe
    input text    xpath=//*[@id="tinymce"]/p  ini section 3
    unselect frame
    sleep    5s
    #Tambah Setion
    click button    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[14]/div[2]/button
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/TambahSection.png
    sleep    10s
    #Embed Youtube
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[15]/div/div/div/h2   sub judul section 4 robot
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiSubjudul4.png
    sleep    5s
    mouse over  xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[16]/div/div/div/div[2]
    click element    xpath=//i[@class="fab fa-youtube"]
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[16]/div/div/input   https://www.youtube.com/watch?v=Q9U2rBtp7qk
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiEmbedYoutube.png
    sleep    5s
    click button    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[17]/div[1]/div/button 
    select frame    xpath=//div[@id="mceu_92"]/iframe
    input text    xpath=//*[@id="tinymce"]/p  ini section 4
    unselect frame
    sleep    5s
    close browser

# Case 9 Pindah-pindah section create artikel
#     open browser    ${url}    ${browser}
#     maximize browser window
#     #Login
#     input text    name:email    ${email}
#     input text    name:password    ${password}
#     click button    Sign In    # xpath=//button[@class="btn btn-submit"]
#     sleep    15s
#     #masuk halaman create artikel
#     click element    xpath=//i[@class="idn-mini-icon idn-write"]
#     sleep    10s
#     #Pilih Topic
#     click element    xpath=//label[@class="app__tab-label___369hK"]
#     sleep    5s
#     click element    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[1]/div/ul/li[1]/p
#     sleep    5s
#     capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/PilihTopic.png
#     #Isi Judul
#     input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[2]/div/div/div/div/h1   robot
#     capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiJudul.png
#     sleep    5s
#     #Isi Cuplikan
#     input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[3]/div/div/div/div/p   framework
#     capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiCuplikan.png
#     sleep    5s
#     #Sisipkan Gambar
#     click button    Sisipkan Gambar    # xpath=//button[@class="ImageStyles__btn-open-image___2eOGp"]
#     capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/PopupSisipkanGambar.png
#     sleep    10s
#     click element    xpath=//*[@id="delete-image"]/div[1]/div/img
#     capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/BerhasilSisipkanGambar.png
#     sleep    5s
#     #Isi Diskripsi
#     select frame    xpath=//div[@class='mce-edit-area mce-container mce-panel mce-stack-layout-item']/iframe
#     input text    xpath=//*[@id="tinymce"]/p   coba dengan senyuman
#     unselect frame
#     capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiDiskripsi.png
#     sleep    5s
#     #Embed Facebook
#     input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[6]/div/div/div/h2   sub judul section 1 robot
#     capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiSubjudul1.png
#     sleep    5s
#     mouse over  xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[7]/div/div/div/div[2]
#     click element    xpath=//i[@class="fab fa-facebook-f"]
#     input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[7]/div/div/input   https://www.facebook.com/KementerianKesehatanRI/photos/a.1021894937840606/3953434788019925/
#     capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiEmbedFB.png
#     sleep    5s
#     click button    xpath=//button[@class="app__add-content___1JCUP"] 
#     select frame    xpath=//div[@id="mceu_35"]/iframe
#     input text    xpath=//*[@id="tinymce"]/p  ini section 1
#     unselect frame
#     sleep    5s
#     #Embed Instagram
#     input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[9]/div/div/div/h2   sub judul section 2 robot
#     capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiSubjudul2.png
#     sleep    5s
#     mouse over  xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[10]/div/div/div/div[2]
#     click element    xpath=//i[@class="fab fa-instagram"]
#     input text    //*[@id="idn-editor"]/div/div/div[2]/div[3]/div[10]/div/div/input     https://www.instagram.com/p/CHeY6l4jLkx/?utm_source=ig_web_button_share_sheet
#     capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiEmbedIG.png
#     sleep    5s
#     click button    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[11]/div[1]/div/button
#     select frame    xpath=//div[@id="mceu_54"]/iframe
#     input text    xpath=//*[@id="tinymce"]/p  ini section 2
#     unselect frame
#     sleep    5s
#     #Embed Twitter
#     input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[12]/div/div/div/h2   sub judul section 3 robot
#     capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiSubjudul3.png
#     sleep    5s
#     mouse over  xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[13]/div/div/div/div[2]
#     click element    xpath=//i[@class="fab fa-twitter"]
#     input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[13]/div/div/input   https://twitter.com/e100ss/status/1326491523471470593?s=20
#     capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiEmbedTwitter.png
#     sleep    5s
#     click button    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[14]/div[1]/div/button
#     select frame    xpath=//div[@id="mceu_73"]/iframe
#     input text    xpath=//*[@id="tinymce"]/p  ini section 3
#     unselect frame
#     sleep    5s
#     #Tambah Setion
#     click button    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[14]/div[2]/button
#     capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/TambahSection.png
#     sleep    10s
#     #Embed Youtube
#     input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[15]/div/div/div/h2   sub judul section 4 robot
#     capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiSubjudul4.png
#     sleep    5s
#     mouse over  xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[16]/div/div/div/div[2]
#     click element    xpath=//i[@class="fab fa-youtube"]
#     input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[16]/div/div/input   https://www.youtube.com/watch?v=Q9U2rBtp7qk
#     capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/IsiEmbedYoutube.png
#     sleep    5s
#     click button    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[17]/div[1]/div/button 
#     select frame    xpath=//div[@id="mceu_92"]/iframe
#     input text    xpath=//*[@id="tinymce"]/p  ini section 4
#     unselect frame
#     sleep    5s
#     click button    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[8]/div[2]/div/button
#     click button    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[11]/div[2]/div/button[2]
#     click button    xpath=///*[@id="idn-editor"]/div/div/div[2]/div[3]/div[14]/div[2]/div/button[1]

# Case 10 Edit Artikel to Draft
# Case 11 Edit Artikel to Draft and save to Editorial

Case 12 click menu view profile
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginSuccess.png
    sleep    10s
    click element    xpath=//a[@class="btn btn-default btn-xs btn-profile"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/ViewProfile.png
    close browser

Case 13 click menu redeem
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginSuccess.png
    sleep    10s
    click element    xpath=//a[@class="request-redeem-nav btn btn-success"][@href="https://community.idntimes.com/dashboard/request-redeem"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Redeem.png
    close browser

Case 14 click menu badge & reward
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginSuccess.png
    sleep    10s
    click element    xpath=//a[@class="btn btn-border-red"][@href="https://community.idntimes.com/gallan-widyanto/badges"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/BadgeReward.png
    close browser

Case 15 click menu how to & FAQ
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginSuccess.png
    sleep    10s
    click element    xpath=//a[@class=""][@href="https://community.idntimes.com/dashboard/how-to"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/FAQ.png
    close browser

Case 16 click menu panduan menulis
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginSuccess.png
    sleep    10s
    click element    xpath=//a[@class="community-guide-nav "][@href="https://community.idntimes.com/dashboard/community-guide"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/PanduanMenulis.png
    close browser

Case 17 click menu assignment
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginSuccess.png
    sleep    10s
    click element    xpath=//a[@class=""][@href="https://community.idntimes.com/dashboard/assignment-list"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Assignment.png
    close browser

Case 18 click menu publish
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginSuccess.png
    sleep    10s
    click element    xpath=//a[@class="publish-nav "][@href="https://community.idntimes.com/dashboard/article/publish/1"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Publish.png
    close browser

Case 19 click menu draft
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginSuccess.png
    sleep    10s
    click element    xpath=//a[@class="draft-nav "][@href="https://community.idntimes.com/dashboard/article/draft/1"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Draft.png
    close browser

Case 20 click menu pending
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginSuccess.png
    sleep    10s
    click element    xpath=//a[@class="pending-nav "][@href="https://community.idntimes.com/dashboard/article/pending/1"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Pending.png
    close browser

Case 21 click menu rejected
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginSuccess.png
    sleep    10s
    click element    xpath=//a[@class="rejected-nav "][@href="https://community.idntimes.com/dashboard/article/rejected/1"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Rejected.png
    close browser

Case 22 click menu revision
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginSuccess.png
    sleep    10s
    click element    xpath=//a[@class="revision-nav "][@href="https://community.idntimes.com/dashboard/article/revision/1"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Revision.png
    close browser

Case 23 click menu redeem history
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginSuccess.png
    sleep    10s
    click element    xpath=//a[@class="redeem-history-nav "][@href="https://community.idntimes.com/dashboard/redeem-history/all/1"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/RedeemHistory.png
    close browser

Case 24 click menu hidup bersama corona
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://www.idntimes.com/tag/covid-19"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/HidupBersamaCorona.png
    close browser

Case 25 click menu tanya jawab
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://tanyajawab.idntimes.com"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/TanyaJawab.png
    close browser

Case 26 click menu news
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://www.idntimes.com/news"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/News.png
    close browser

Case 27 click menu business
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://www.idntimes.com/business"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Business.png
    close browser

Case 28 click menu sport
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://www.idntimes.com/sport"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Sport.png
    close browser

Case 29 click menu tech
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://www.idntimes.com/tech"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Tech.png
    close browser

Case 30 click menu hype
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://www.idntimes.com/hype"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Hype.png
    close browser

Case 31 click menu life
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://www.idntimes.com/life"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Life.png
    close browser

Case 32 click menu health
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://www.idntimes.com/health"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Health.png
    close browser

Case 33 click menu travel
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://www.idntimes.com/travel"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Travel.png
    close browser

Case 34 click menu community
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://community.idntimes.com"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Community.png
    close browser

Case 35 click menu about us
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://www.idntimes.com/about-us"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/AboutUs.png
    close browser

Case 36 click menu career
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://www.idn.media/career#hire"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Career.png
    close browser

Case 37 click menu privacy policy
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://www.idntimes.com/kebijakan-privasi"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/PrivacyPolicy.png
    close browser

Case 38 click menu pedoman media siber
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot   /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://www.idntimes.com/pedoman-media-siber"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/PedomanMediaSiber.png
    close browser

Case 39 click menu contact us
    open browser    ${url}    ${browser}
    maximize browser window
    input text    name:email    ${email}
    input text    name:password    ${password}
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/Login_Normal.png
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/LoginSuccess.png
    sleep    10s
    click link    xpath=//a[@href="https://www.idntimes.com/hubungi-kami"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/ContactUs.png
    close browser

Case 40 signup fail with all field empty
    open browser    ${url}    ${browser}
    maximize browser window
    sleep    10s
    click element    xpath=//a[@href="#signup"]
    sleep    10s
    click button    Sign Up    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/SignupError1.png
    close browser

Case 41 signup success
    open browser    ${url}    ${browser}
    maximize browser window
    sleep    10s
    click element    xpath=//a[@href="#signup"]
    input text    name:nama    Irfan
    sleep    10s
    input text    xpath=(//input[@name='email'])[2]    ${email_registrasi}
    input text    xpath=(//input[@name='password'])[2]    ${password_registrasi}
    input text    name:passwordConf   ${password}
    sleep    10s
    click button    Sign Up    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/SignupSuccess.png
    close browser

Case 42 signup fail with email is registered
    open browser    ${url}    ${browser}
    maximize browser window
    sleep    10s
    click element    xpath=//a[@href="#signup"]
    input text    name:nama    Irfan
    sleep    10s
    input text    xpath=(//input[@name='email'])[2]    ${email_registrasi}
    input text    xpath=(//input[@name='password'])[2]    ${password_registrasi}
    input text    name:passwordConf    ${password_registrasi}
    sleep    10s
    click button    Sign Up    # xpath=//button[@class="btn btn-submit"]
    sleep    10s
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/regression/screenshot/SignupError2.png
    close browser
