*** Settings ***
Documentation    progress to book flight
Resource         ../appp.robot
Resource         ../bookFlight/bookflightone.robot
Variables        book_one_locators.yaml
Library          yaml
Library          DateTime

*** Keywords ***

Input Username
    [Arguments]                      ${username}
    Wait Until Element Is Visible    locator=${username_input}
    Input Text                       locator=${username_input}         text=${username}

Input Password
    [Arguments]                       ${password}
    Input Text                        locator=${password_input}        text=${password}

Click Sign In On Login Screen
    Click Element     locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]


Book With Valid Credential
    [Arguments]                ${username}   ${password}
    Verify Home Screen Appears
    Click Sign In
    Input Username        username=${username}
    Input Password        password=${password}
    Click Sign In On Login Screen
    Verify Success login
    Click book

Select Origin
    #[Arguments]                       ${option_text_1}
    Wait Until Element Is Visible    locator=${from_city}
    Click Element                    locator=${from_city}        
    Click Element                    locator=${choose_form_city}
    #xpath=//android.view.View[@resource-id="android:id/${option_text}"] 

Select Destination
    #[Arguments]                        ${option_text_2}
    Wait Until Element Is Visible      locator=${destinantion_city}
    Click Element                      locator=${destinantion_city}
    Click Element                      locator=${choose_destination_city}
    #xpath=//android.view.View[@resource-id="android:id/${option_text}"]

Select Class
    #[Arguments]                        ${option_text_3}
    Wait Until Element Is Visible      locator=${class}
    Click Element                      locator=${class}
    Click Element                      locator=${choose_class} 
    #${option_text_3}

Select Date
    [Arguments]    ${xpath}
    
    Click Element                      locator=${start_date}
                          
    Wait Until Element Is Visible      xpath=//android.widget.DatePicker[@resource-id="android:id/datePicker"]
    Wait Until Element Is Visible      xpath= //android.widget.LinearLayout[@resource-id="android:id/date_picker_header"]
    #Click Element                       locator=//android.widget.TextView[@resource-id="android:id/date_picker_header_year"]
    
    #Wait Until Element Is Visible        xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="2018"]
    Wait Until Element Is Visible       xpath=//android.view.View[@resource-id="android:id/month_view"]
    #Click Element                        xpath=//android.widget.ImageButton[@content-desc="Next month"]
    
    Click Element                       xpath=//android.view.View[@content-desc="02 August 2019"]
    

           
    
    #Click Element                      locator=${year_picker}
    #Wait Until Element Is Visible      locator=${choose_year_picker}
    #Click Element                      locator=${choose_year_picker}
    #Wait Until Element Is Visible      locator=${Month_view} 
    #Click Element                      locator=${select_start_date} 

Click Ok For Start Date
    Wait Until Element Is Visible       xpath=//android.widget.Button[@resource-id="android:id/button1"]
    Click Element                      xpath=//android.widget.Button[@resource-id="android:id/button1"]


Select End Date
    [Arguments]    ${xpath}
    
    #[Arguments]                        ${year_2}
    #Wait Until Element Is Visible    locator=${end_date}
    Click Element    locator=${end_date}
    Wait Until Element Is Visible      xpath=//android.widget.DatePicker[@resource-id="android:id/datePicker"]
    Wait Until Element Is Visible      xpath= //android.widget.LinearLayout[@resource-id="android:id/date_picker_header"]
    #Click Element    locator=${end_date_picker}
    #Click Element    locator=${end_year_picker} 
    #Wait Until Element Is Visible  locator=${end_choose_year_picker} 
    #Click Element    locator=${end_choose_year_picker} 
    Wait Until Element Is Visible       xpath=//android.view.View[@resource-id="android:id/month_view"]
    Click Element    xpath=//android.view.View[@content-desc="03 August 2019"]
Click Ok For End Date 2
    Wait Until Element Is Visible       xpath=//android.widget.Button[@resource-id="android:id/button1"]
    Click Element    xpath=//android.widget.Button[@resource-id="android:id/button1"]

Click Button Type
    Click Element    locator=${only_flight}

Click The Estimate
    Click Element    locator=${estimation}
    
After Fill Form Book
    Click Book One WAY
    Verifiy On Page Choose Price

Choose The Need Price
    Click Element    locator=${price_input}
    Click Confirm booking
    Finish Order to get reservesation Number
    










    