
*** Settings ***
Documentation         Command Open Flight App
Library               AppiumLibrary

*** Variables ***
${REMOTE_URL}                http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}             Android
${PLATFORM_VERSION}          9.0
${DEVICE_NAME}               emulator-5554
${APP_PACKAGE}               com.example.myapplication
${APP_ACTIVITY}              com.example.myapplication.MainActivity

${ADMIN_TEXT}                support@ngendigital.com
${PASS_TEXT}                 abc123
${INVALID_USERNAME}          random@gmail.com
${INVALID_PASSWORD}          suksesmulia

*** Keywords ***

User Membuka Aplikasi Flight App
    Open Application         ${REMOTE_URL}        
    ...                      platformName=${PLATFORM_NAME}        
    ...                      platformVersion=${PLATFORM_VERSION}        
    ...                      deviceName=${DEVICE_NAME}            
    ...                      appPackage=${APP_PACKAGE}        
    ...                      appActivity=${APP_ACTIVITY}
    

Close Flight Application
    Close Application