*** Settings ***
Resource        ../base.robot

*** Keywords ***
Input Valid Email
    Wait Until Element Is Visible        locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
    Input Text                           locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]   text=support@ngendigital.com

Input Password User
    Input Text                           locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    text=abc123

Click Sign In Button
    Click Element                        locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Verify User Successfully Login
    Wait Until Element Is Visible        locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]
    Element Should Be Visible            locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]