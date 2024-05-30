*** Settings ***
Resource         ../base.robot
Resource         ../HomePage/homePage.robot

*** Keywords ***
Input Email
    [Arguments]                          ${email}
    Wait Until Element Is Visible        locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
    Input Text                           locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]   text=${email}

Input Password
    [Arguments]                          ${password}
    Input Text                           locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    text=${password}

Click Sign In Button
    Click Element                        locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Verify User Successfully Login
    Wait Until Element Is Visible        locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]
    Element Should Be Visible            locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]

Login With Valid Credential
    [Arguments]                          ${email}    ${password}
    Verify Home Screen Appears
    Click Sign In Button On Home Page
    Input Email                          email=${email}
    Input Password                       password=${password}
    Click Sign In Button
    Verify User Successfully Login
