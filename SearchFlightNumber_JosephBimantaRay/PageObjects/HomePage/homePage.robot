*** Settings ***
Resource        ../base.robot

*** Keywords ***
Verify Home Screen Appears
    Wait Until Element Is Visible        locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView"]
    Element Should Be Visible            locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView"]

Click Search Button On Home Page Without Login
    Click Element                        locator=//android.widget.Button[@resource-id="com.example.myapplication:id/button6" and @text="Search"]

Click Search Button On Home Page After Login Successfully
    Click Element                        locator=//android.widget.Button[@resource-id="com.example.myapplication:id/search_flight"]

Click Sign In Button On Home Page
    Click Element                        locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]

Verify Login Successfully
    Wait Until Element Is Visible        locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]
    Element Should Be Visible            locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]         