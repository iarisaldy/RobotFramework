*** Settings ***
Library  AppiumLibrary

*** Test Cases ***
Open_Application
    Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=cd47883e  browserName=com.android.chrome appActivity=MainActivity
    #Go To URL   https://community.idntimes.com/