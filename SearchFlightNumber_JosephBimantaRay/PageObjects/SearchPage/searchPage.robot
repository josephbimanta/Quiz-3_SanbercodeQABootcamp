*** Settings ***
Resource        ../base.robot
Resource    ../HomePage/homePage.robot

*** Keywords ***
Verify Search Page Appears
    Wait Until Element Is Visible     locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/enterFlight"]

Input Flight Number On Screen
    [Arguments]                       ${flight_number}
    Input Text                        locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]    text=${flight_number}

Input Invalid Flight Number
    Input Text                        locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]    text=DA900

Click Search Button On Search Page
    Click Element                     locator=//android.widget.Button[@resource-id="com.example.myapplication:id/searchFlight"]

Verify Correct Flight Number
    Wait Until Element Is Visible     locator=//android.widget.TextView[@text="DA 935"]

Verify Uncorrect Flight Number
    Wait Until Page Does Not Contain Element    locator=//android.widget.TextView[@text="DA 900"]

Open Search Page
    Click Search Button On Home Page After Login Successfully
    Verify Search Page Appears

Input Flight Number
    [Arguments]    ${flight_number}
    Input Flight Number On Screen    flight_number=${flight_number}
    Click Search Button On Search Page