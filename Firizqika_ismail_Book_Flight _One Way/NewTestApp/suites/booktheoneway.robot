*** Settings ***

Resource     ../PageObjects/book_one_way/booking_theflight.robot
Resource     ../PageObjects/bookFlight/bookflightone.robot
Test Setup   Open Flight Application
Test Teardown   Close Flight Application



*** Variables ***
${VALID_USERNAME}            support@ngendigital.com
${VALID_PASSWORD}            abc123
#${option_text_1}            New York
           
           




*** Test Cases ***
User Should Be Able To Login With Valid Credential
    [Tags]             TC-001   mobile     App
    Book With Valid Credential    ${VALID_USERNAME}    ${VALID_PASSWORD}
    Select Origin           
    Select Destination
    Select Class
    Select Date        xpath=//android.view.View[@content-desc="02 August 2019"]
    Click Ok For Start Date
    Select End Date    xpath=//android.view.View[@content-desc="03 August 2019"]
    Click Ok For End Date 2
    Click Button Type
    Click The Estimate
    After Fill Form Book
    Choose The Need Price
    
    