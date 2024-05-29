*** Settings ***
Documentation       Open appliaction, close application ,book flight
Library             AppiumLibrary



*** Variables ***

${DEVICE_NAME}      emulator-5554

${APP_PACKAGE}      com.example.myapplication

${APP_ACTIVITY}     com.example.myapplication.MainActivity

${REMOTE_URL}       http://localhost:4723

${PLATFORM_NAME}    Android

${PLATFORM_VERSION}   12.0

${ANDROID_AUTOMATION_NAME}    UIAutomator2



*** Keywords ***

Open Flight Application

    Open Application    ${REMOTE_URL}
    ...                 platformName=${PLATFORM_NAME}
    ...                 platformVersion=${PLATFORM_VERSION}
    ...                 deviceName=${DEVICE_NAME}
    ...                 appPackage=${APP_PACKAGE}
    ...                 appActivity=${APP_ACTIVITY}
    ...                 automationName=${ANDROID_AUTOMATION_NAME}
    

Close Flight Application
    Close Application  





