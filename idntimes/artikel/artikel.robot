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

Case 1 Open Create artikel
    open browser    ${url}    ${browser}
    maximize browser window
    #Login
    input text    name:email    ${email}
    input text    name:password    ${password}
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    #masuk halaman create artikel
    wait until element is visible   xpath=//i[@class="idn-mini-icon idn-write"]
    click element    xpath=//i[@class="idn-mini-icon idn-write"]
    close browser

Case 2 Create artikel to Draft
    open browser    ${url}    ${browser}
    maximize browser window
    #Login
    input text    name:email    ${email}
    input text    name:password    ${password}
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    #masuk halaman create artikel
    wait until element is visible   xpath=//i[@class="idn-mini-icon idn-write"]
    click element    xpath=//i[@class="idn-mini-icon idn-write"]
    #Pilih Topic
    wait until element is visible   xpath=//label[@class="app__tab-label___369hK"]
    click element    xpath=//label[@class="app__tab-label___369hK"]
    wait until element is visible   xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[1]/div/ul/li[1]/p
    click element    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[1]/div/ul/li[1]/p
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/PilihTopic.png
    #Isi judul
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[2]/div/div/div/div/h1   robot
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiJudul.png
    sleep    5s
    #Isi Cuplikan
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[3]/div/div/div/div/p   framework
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiCuplikan.png
    sleep    5s
    #Sisipkan gambar
    click button    Sisipkan Gambar    # xpath=//button[@class="ImageStyles__btn-open-image___2eOGp"]
    capture page screenshot   /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/PopupSisipkanGambar.png
    sleep    5s
    click element    xpath=//*[@id="delete-image"]/div[1]/div/img
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/BerhasilSisipkanGambar.png
    sleep    5s
    #Isi Diskripsi
    select frame    xpath=//div[@class='mce-edit-area mce-container mce-panel mce-stack-layout-item']/iframe
    input text    xpath=//*[@id="tinymce"]/p   coba dengan senyuman
    unselect frame
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiDiskripsi.png
    sleep    5s
    #SavetoDraft
    click button    Save as draft    # xpath=//button[@class="app__btn-action___2JQU-"]
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/SaveToDraft.png
    sleep    5s

Case 3 Create artikel to draft and preview
    open browser    ${url}    ${browser}
    maximize browser window
    #Login
    input text    name:email    ${email}
    input text    name:password    ${password}
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    #masuk halaman create artikel
    wait until element is visible   xpath=//i[@class="idn-mini-icon idn-write"]
    click element    xpath=//i[@class="idn-mini-icon idn-write"]
    #Pilih Topic
    wait until element is visible   xpath=//label[@class="app__tab-label___369hK"]
    click element    xpath=//label[@class="app__tab-label___369hK"]
    wait until element is visible   xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[1]/div/ul/li[1]/p
    click element    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[1]/div/ul/li[1]/p
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/PilihTopic.png
    #Isi judul
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[2]/div/div/div/div/h1   robot
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiJudul.png
    sleep    5s
    #Isi Cuplikan
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[3]/div/div/div/div/p   framework
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiCuplikan.png
    sleep    5s
    #Sisipkan gambar
    click button    Sisipkan Gambar    # xpath=//button[@class="ImageStyles__btn-open-image___2eOGp"]
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/PopupSisipkanGambar.png
    sleep    5s
    click element    xpath=//*[@id="delete-image"]/div[1]/div/img
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/BerhasilSisipkanGambar.png
    sleep    5s
    #Isi Diskripsi
    select frame    xpath=//div[@class='mce-edit-area mce-container mce-panel mce-stack-layout-item']/iframe
    input text    xpath=//*[@id="tinymce"]/p   coba dengan senyuman
    unselect frame
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiDiskripsi.png
    sleep    5s
    #SavetoDraft
    click button    Save as draft    # xpath=//button[@class="app__btn-action___2JQU-"]
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/SaveToDraft.png
    sleep    5s
    #Preview Artikel
    click element    xpath=//a[@class="app__btn-action___2JQU-"]
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/Preview.png
    sleep    5s
    close browser

Case 4 Create full artikel to draft and preview
    open browser    ${url}    ${browser}
    maximize browser window
    #Login
    input text    name:email    ${email}
    input text    name:password    ${password}
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    #masuk halaman create artikel
    wait until element is visible   xpath=//i[@class="idn-mini-icon idn-write"]
    click element    xpath=//i[@class="idn-mini-icon idn-write"]
    #Pilih Topic
    wait until element is visible   xpath=//label[@class="app__tab-label___369hK"]
    click element    xpath=//label[@class="app__tab-label___369hK"]
    wait until element is visible   xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[1]/div/ul/li[1]/p
    click element    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[1]/div/ul/li[1]/p
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/PilihTopic.png
    #Isi Judul
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[2]/div/div/div/div/h1   robot
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiJudul.png
    sleep    5s
    #Isi Cuplikan
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[3]/div/div/div/div/p   framework
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiCuplikan.png
    sleep    5s
    #Sisipkan Gambar
    click button    Sisipkan Gambar    # xpath=//button[@class="ImageStyles__btn-open-image___2eOGp"]
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/PopupSisipkanGambar.png
    sleep    10s
    click element    xpath=//*[@id="delete-image"]/div[1]/div/img
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/BerhasilSisipkanGambar.png
    sleep    5s
    #Isi Diskripsi
    select frame    xpath=//div[@class='mce-edit-area mce-container mce-panel mce-stack-layout-item']/iframe
    input text    xpath=//*[@id="tinymce"]/p   coba dengan senyuman
    unselect frame
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiDiskripsi.png
    sleep    5s
    #Embed Facebook
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[6]/div/div/div/h2   sub judul section 1 robot
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiSubjudul1.png
    sleep    5s
    mouse over  xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[7]/div/div/div/div[2]
    click element    xpath=//i[@class="fab fa-facebook-f"]
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[7]/div/div/input   https://www.facebook.com/KementerianKesehatanRI/photos/a.1021894937840606/3953434788019925/
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiEmbedFB.png
    sleep    5s
    #Embed Instagram
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[9]/div/div/div/h2   sub judul section 2 robot
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiSubjudul2.png
    sleep    5s
    mouse over  xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[10]/div/div/div/div[2]
    click element    xpath=//i[@class="fab fa-instagram"]
    input text    //*[@id="idn-editor"]/div/div/div[2]/div[3]/div[10]/div/div/input     https://www.instagram.com/p/CHeY6l4jLkx/?utm_source=ig_web_button_share_sheet
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiEmbedIG.png
    sleep    5s
    #Embed Twitter
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[12]/div/div/div/h2   sub judul section 3 robot
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiSubjudul3.png
    sleep    5s
    mouse over  xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[13]/div/div/div/div[2]
    click element    xpath=//i[@class="fab fa-twitter"]
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[13]/div/div/input   https://twitter.com/e100ss/status/1326491523471470593?s=20
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiEmbedTwitter.png
    sleep    5s
    #Tambah Setion
    click button    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[14]/div[2]/button
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/TambahSection.png
    sleep    10s
    #Embed Youtube
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[15]/div/div/div/h2   sub judul section 4 robot
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiSubjudul4.png
    sleep    5s
    mouse over  xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[16]/div/div/div/div[2]
    click element    xpath=//i[@class="fab fa-youtube"]
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[16]/div/div/input   https://www.youtube.com/watch?v=Q9U2rBtp7qk
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiEmbedYoutube.png
    sleep    5s
    #Save to Draft
    click button    Save as draft    # xpath=//button[@class="app__btn-action___2JQU-"]
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/SaveToDraft.png
    sleep    5s
    #Preview artikel
    click element    xpath=//a[@class="app__btn-action___2JQU-"]
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/Preview.png
    sleep    5s
    close browser

Case 5 Create artikel to Editorial
    open browser    ${url}    ${browser}
    maximize browser window
    #Login
    input text    name:email    ${email}
    input text    name:password    ${password}
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    #masuk halaman create artikel
    wait until element is visible   xpath=//i[@class="idn-mini-icon idn-write"]
    click element    xpath=//i[@class="idn-mini-icon idn-write"]
    #Pilih Topic
    wait until element is visible   xpath=//label[@class="app__tab-label___369hK"]
    click element    xpath=//label[@class="app__tab-label___369hK"]
    wait until element is visible   xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[1]/div/ul/li[1]/p
    click element    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[1]/div/ul/li[1]/p
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/PilihTopic.png
    #Isi Judul
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[2]/div/div/div/div/h1   robot
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiJudul.png
    sleep    5s
    #Isi Cuplikan
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[3]/div/div/div/div/p   framework
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiCuplikan.png
    sleep    5s
    #Sisipkan Gambar
    click button    Sisipkan Gambar    # xpath=//button[@class="ImageStyles__btn-open-image___2eOGp"]
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/PopupSisipkanGambar.png
    sleep    10s
    click element    xpath=//*[@id="delete-image"]/div[1]/div/img
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/BerhasilSisipkanGambar.png
    sleep    5s
    #Isi Diskripsi
    select frame    xpath=//div[@class='mce-edit-area mce-container mce-panel mce-stack-layout-item']/iframe
    input text    xpath=//*[@id="tinymce"]/p   coba dengan senyuman
    unselect frame
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiDiskripsi.png
    sleep    5s
    #Embed Facebook
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[6]/div/div/div/h2   sub judul section 1 robot
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiSubjudul1.png
    sleep    5s
    mouse over  xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[7]/div/div/div/div[2]
    click element    xpath=//i[@class="fab fa-facebook-f"]
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[7]/div/div/input   https://www.facebook.com/KementerianKesehatanRI/photos/a.1021894937840606/3953434788019925/
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiEmbedFB.png
    sleep    5s
    click button    xpath=//button[@class="app__add-content___1JCUP"] 
    select frame    xpath=//div[@id="mceu_35"]/iframe
    input text    xpath=//*[@id="tinymce"]/p  ini section 1
    unselect frame
    sleep    5s
    #Embed Instagram
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[9]/div/div/div/h2   sub judul section 2 robot
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiSubjudul2.png
    sleep    5s
    mouse over  xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[10]/div/div/div/div[2]
    click element    xpath=//i[@class="fab fa-instagram"]
    input text    //*[@id="idn-editor"]/div/div/div[2]/div[3]/div[10]/div/div/input     https://www.instagram.com/p/CHeY6l4jLkx/?utm_source=ig_web_button_share_sheet
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiEmbedIG.png
    sleep    5s
    click button    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[11]/div[1]/div/button
    select frame    xpath=//div[@id="mceu_54"]/iframe
    input text    xpath=//*[@id="tinymce"]/p  ini section 2
    unselect frame
    sleep    5s
    #Embed Twitter
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[12]/div/div/div/h2   sub judul section 3 robot
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiSubjudul3.png
    sleep    5s
    mouse over  xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[13]/div/div/div/div[2]
    click element    xpath=//i[@class="fab fa-twitter"]
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[13]/div/div/input   https://twitter.com/e100ss/status/1326491523471470593?s=20
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiEmbedTwitter.png
    sleep    5s
    click button    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[14]/div[1]/div/button
    select frame    xpath=//div[@id="mceu_73"]/iframe
    input text    xpath=//*[@id="tinymce"]/p  ini section 3
    unselect frame
    sleep    5s
    #Tambah Setion
    click button    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[14]/div[2]/button
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/TambahSection.png
    sleep    10s
    #Embed Youtube
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[15]/div/div/div/h2   sub judul section 4 robot
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiSubjudul4.png
    sleep    5s
    mouse over  xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[16]/div/div/div/div[2]
    click element    xpath=//i[@class="fab fa-youtube"]
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[16]/div/div/input   https://www.youtube.com/watch?v=Q9U2rBtp7qk
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiEmbedYoutube.png
    sleep    5s
    click button    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[17]/div[1]/div/button 
    select frame    xpath=//div[@id="mceu_92"]/iframe
    input text    xpath=//*[@id="tinymce"]/p  ini section 4
    unselect frame
    sleep    5s
    close browser

Case 6 Pindah-pindah section create artikel
    open browser    ${url}    ${browser}
    maximize browser window
    #Login
    input text    name:email    ${email}
    input text    name:password    ${password}
    click button    Sign In    # xpath=//button[@class="btn btn-submit"]
    #masuk halaman create artikel
    sleep    10s
    wait until element is visible   xpath=//i[@class="idn-mini-icon idn-write"]
    click element    xpath=//i[@class="idn-mini-icon idn-write"]
    #Pilih Topic
    wait until element is visible   xpath=//label[@class="app__tab-label___369hK"]
    click element    xpath=//label[@class="app__tab-label___369hK"]
    wait until element is visible   xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[1]/div/ul/li[1]/p
    click element    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[1]/div/ul/li[1]/p
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/PilihTopic.png
    #Isi Judul
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[2]/div/div/div/div/h1   robot
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiJudul.png
    #Isi Cuplikan
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[3]/div/div/div/div/p   framework
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiCuplikan.png
    #Sisipkan Gambar
    click button    Sisipkan Gambar    # xpath=//button[@class="ImageStyles__btn-open-image___2eOGp"]
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/PopupSisipkanGambar.png
    wait until element is visible   xpath=//*[@id="delete-image"]/div[1]/div/img
    click element    xpath=//*[@id="delete-image"]/div[1]/div/img
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/BerhasilSisipkanGambar.png
    sleep    5s
    #Isi Diskripsi
    select frame    xpath=//div[@class='mce-edit-area mce-container mce-panel mce-stack-layout-item']/iframe
    input text    xpath=//*[@id="tinymce"]/p   coba dengan senyuman
    unselect frame
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiDiskripsi.png
    sleep    5s
    #Embed Facebook
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[6]/div/div/div/h2   sub judul section 1 robot
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiSubjudul1.png
    sleep    5s
    mouse over  xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[7]/div/div/div/div[2]
    click element    xpath=//i[@class="fab fa-facebook-f"]
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[7]/div/div/input   https://www.facebook.com/KementerianKesehatanRI/photos/a.1021894937840606/3953434788019925/
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiEmbedFB.png
    sleep    5s
    click button    xpath=//button[@class="app__add-content___1JCUP"] 
    select frame    xpath=//div[@id="mceu_35"]/iframe
    input text    xpath=//*[@id="tinymce"]/p  ini section 1
    unselect frame
    sleep    5s
    #Embed Instagram
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[9]/div/div/div/h2   sub judul section 2 robot
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiSubjudul2.png
    sleep    5s
    mouse over  xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[10]/div/div/div/div[2]
    click element    xpath=//i[@class="fab fa-instagram"]
    input text    //*[@id="idn-editor"]/div/div/div[2]/div[3]/div[10]/div/div/input     https://www.instagram.com/p/CHeY6l4jLkx/?utm_source=ig_web_button_share_sheet
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiEmbedIG.png
    sleep    5s
    click button    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[11]/div[1]/div/button
    select frame    xpath=//div[@id="mceu_54"]/iframe
    input text    xpath=//*[@id="tinymce"]/p  ini section 2
    unselect frame
    sleep    5s
    #Embed Twitter
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[12]/div/div/div/h2   sub judul section 3 robot
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiSubjudul3.png
    sleep    5s
    mouse over  xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[13]/div/div/div/div[2]
    click element    xpath=//i[@class="fab fa-twitter"]
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[13]/div/div/input   https://twitter.com/e100ss/status/1326491523471470593?s=20
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiEmbedTwitter.png
    sleep    5s
    click button    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[14]/div[1]/div/button
    select frame    xpath=//div[@id="mceu_73"]/iframe
    input text    xpath=//*[@id="tinymce"]/p  ini section 3
    unselect frame
    sleep    5s
    #Tambah Setion
    click button    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[14]/div[2]/button
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/TambahSection.png
    sleep    10s
    #Embed Youtube
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[15]/div/div/div/h2   sub judul section 4 robot
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiSubjudul4.png
    sleep    5s
    mouse over  xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[16]/div/div/div/div[2]
    click element    xpath=//i[@class="fab fa-youtube"]
    input text    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[16]/div/div/input   https://www.youtube.com/watch?v=Q9U2rBtp7qk
    capture page screenshot    /Users/iaris/Documents/RobotFramework/idntimes/artikel/screenshot/IsiEmbedYoutube.png
    sleep    5s
    click button    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[17]/div[1]/div/button 
    select frame    xpath=//div[@id="mceu_93"]/iframe
    input text    xpath=//*[@id="tinymce"]/p  ini section 4
    unselect frame
    #wait until element is visible   xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[17]/div[2]/div/button/i
    click element    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[17]/div[2]/div/button/i
    #wait until element is visible   xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[8]/div[2]/div/button/i
    click element    xpath=//*[@id="idn-editor"]/div/div/div[2]/div[3]/div[8]/div[2]/div/button