
*** Settings ***
Documentation         Command Booking Round Flight
Resource              ../base.robot
Resource              ../LoginPage/login-page-locator.yaml
Variables             brFlightvalid-page-locator.yaml
Variables             login-page-locator.yaml

*** Keywords ***

User Menginputkan Username di Field Username
    [Arguments]                          ${ADMIN_TEXT}
    Wait Until Element Is Visible        locator=${username_input}
    Input Text                           locator=${username_input}           text=${ADMIN_TEXT} 

User Menginputkan Password di Field Password
    [Arguments]                          ${PASS_TEXT}
    Input Text                           locator=${password_input}            text=${PASS_TEXT}  

User menekan tombol sign in di halaman login
    Click Element                        locator=${tombol_signin}

Verifikasi Home Screen 
    Element Should Be Visible            locator=${verif_homescreen} 

User Menekan Fitur Sign In di Home Screen
    Click Element                        locator=${fitur_signin} 

Verifikasi login berhasil
     Wait Until Element Is Visible       locator=${verif_login} 

Input Username dan Password Valid
    Verifikasi Home Screen
    User Menekan Fitur Sign In di Home Screen
    User Menginputkan Username di Field Username    ${ADMIN_TEXT}
    User Menginputkan Password di Field Password    ${PASS_TEXT}
    User menekan tombol sign in di halaman login
    Verifikasi login berhasil

User menekan menu book
    Wait Until Element Is Visible         locator=${book_fitur}
    Click Element                         locator=${book_fitur}
User menekan fitur roundtrip
    Wait Until Element Is Visible         locator=${roundtrip_button}
    Click Element                         locator=${roundtrip_button}
    
User memilih fitur from city
    Click Element                        locator=${fromcity_field}
    Wait Until Element Is Visible        locator=${verify_listview}

Select New York
    Wait Until Element Is Visible        locator=${newyork_fromcity}
    Click Element                        locator=${newyork_fromcity}

User memilih fitur to city 
    Click Element                        locator=${tocity_field}
    Wait Until Element Is Visible        locator=${verify_listview}

Select London
    Wait Until Element Is Visible        locator=${london_tocity}
    Click Element                        locator=${london_tocity}

User memilih fitur class
    Click Element                        locator=${class_field}
    Wait Until Element Is Visible        locator=${verify_listview}
    
Select First
    Wait Until Element Is Visible        locator=${first_class}
    Click Element                        locator=${first_class}
    
User memilih Start Date
     Click Element                        locator=${startdate_field}
Select Bulan
     Wait Until Element Is Visible        locator=${startdate_date}
     Click Element                        locator=${startdate_date}
     Click Element                        locator=${date_button}

User memilih End Date
     Wait Until Element Is Visible        locator=${enddate_field}
     Click Element                        locator=${enddate_field}    
     Wait Until Element Is Visible        locator=${enddate_date}
     Click Element                        locator=${enddate_date}
     Wait Until Element Is Visible        locator=${date_button}
     Click Element                        locator=${date_button}

User memilih Flight
    Wait Until Element Is Visible         locator=${flight_button}
    Click Element                         locator=${flight_button}

User memilih Flight Hotel
    Click Element                         //android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlightHotel"]

User memilih Flight 1 Day
    Click Element                         //android.widget.CheckBox[@resource-id="com.example.myapplication:id/checkBoxDay"]

User menekan tombol Book
    Wait Until Element Is Visible         locator=${book_button}
    Click Element                         locator=${book_button}

User memilih harga tiket yang diinginkan 
    Wait Until Element Is Visible         locator=${ticket_button}
    Click Element                         locator=${ticket_button}

User menekan tombol confirm  
    Wait Until Element Is Visible         locator=${confirm_button}
    Click Element                         locator=${confirm_button}

Verifikasi booking berhasil
     Wait Until Element Is Visible        locator=${book_verif}

brFlightvalid robot
    Input Username dan Password Valid
    User menekan menu book
    User menekan fitur roundtrip
    User memilih fitur from city
    Select New York
    User memilih fitur to city
    Select London
    User memilih fitur class
    Select First
    User memilih Start Date
    Select Bulan
    User memilih End Date
    User memilih Flight
    User menekan tombol Book
    User memilih harga tiket yang diinginkan 
    User menekan tombol confirm 
    Verifikasi booking berhasil