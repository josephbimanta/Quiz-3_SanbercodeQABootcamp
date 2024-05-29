*** Settings ***
Documentation        Segala hal yg berkaitan dengan flow booking
Resource             ../appp.robot

Library    XML

*** Keywords ***
Verify Home Screen Appears
    Element Should Be Visible    locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView4"]

Click Sign In
    Click Element     locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]

Verify Success login
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]

Click book
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book"]

Verifiy On Page book
    Wait Until Element Is Visible    locator=//android.widget.TextView[@text="ONE WAY"]

Click Book One WAY
    Click Element            locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]

Verifiy On Page Choose Price
    Wait Until Element Is Visible        locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView6"]

Click Confirm booking
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/confirm_order"]

Finish Order to get reservesation Number
    Wait Until Element Is Visible   locator=//android.widget.CheckedTextView[@resource-id="com.example.myapplication:id/checkedTextView"]

