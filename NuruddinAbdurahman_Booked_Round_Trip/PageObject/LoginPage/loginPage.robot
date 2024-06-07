 
*** Settings ***
Documentation         Command Login Flight Apps
Resource              ../base.robot
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
    [Arguments]                          ${ADMIN_TEXT}    ${PASS_TEXT}
    Verifikasi Home Screen
    User Menekan Fitur Sign In di Home Screen
    User Menginputkan Username di Field Username    ${ADMIN_TEXT}
    User Menginputkan Password di Field Password    ${PASS_TEXT}
    User menekan tombol sign in di halaman login
    Verifikasi login berhasil
    
Input Username Valid dan Password Invalid
    [Arguments]                          ${ADMIN_TEXT}    ${INVALID_PASSWORD} 
    Verifikasi Home Screen
    User Menekan Fitur Sign In di Home Screen
    User Menginputkan Username di Field Username    ${ADMIN_TEXT}
    User Menginputkan Password di Field Password    ${INVALID_PASSWORD}
    User menekan tombol sign in di halaman login
    Verifikasi login berhasil