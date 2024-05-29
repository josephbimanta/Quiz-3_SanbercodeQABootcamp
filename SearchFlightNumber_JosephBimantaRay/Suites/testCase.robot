*** Settings ***
Resource     ../PageObjects/HomePage/homePage.robot
Resource     ../PageObjects/LoginPage/loginPage.robot
Resource     ../PageObjects/SearchPage/searchPage.robot
Test Setup   Open Flight Application


*** Test Cases ***
User Search Flight Number With Login And Valid Flight Number[DA935]
    Verify Home Screen Appears
    Click Sign In Button On Home Page
    Input Valid Email
    Input Password User
    Click Sign In Button
    Verify Login Successfully
    Click Search Button On Home Page After Login Successfully
    Verify Search Page Appears
    Input Valid Flight Number
    Click Search Button On Search Page
    Verify Correct Flight Number

User Search Flight Number With Login And Invalid Flight Number[DA900]
    Verify Home Screen Appears
    Click Sign In Button On Home Page
    Input Valid Email
    Input Password User
    Click Sign In Button
    Verify Login Successfully
    Click Search Button On Home Page After Login Successfully
    Verify Search Page Appears
    Input Invalid Flight Number
    Click Search Button On Search Page
    Verify Uncorrect Flight Number

User Search Flight Number With Login And Not Fill Flight Number
    Verify Home Screen Appears
    Click Sign In Button On Home Page
    Input Valid Email
    Input Password User
    Click Sign In Button
    Verify Login Successfully
    Click Search Button On Home Page After Login Successfully
    Verify Search Page Appears
    Click Search Button On Search Page
    Verify Uncorrect Flight Number

#Expected To Pass
#Sepertinya terjadi BUG pada fitur Search, Book, dan Check In ketika belum melakukan Sign In
User Search Flight Number Without Login
    Verify Home Screen Appears
    Click Search Button On Home Page Without Login
    