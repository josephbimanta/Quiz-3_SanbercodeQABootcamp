*** Settings ***
# Resource     ../PageObject/HomePage/homePage.robot
Resource         ../PageObject/Booked Roundtrip/brFlightvalid.robot
Test Setup       User Membuka Aplikasi Flight App
Test Teardown     Close Flight Application


*** Test Cases ***

Booked Roundtrip Flight Valid
    [Tags]             TC-001   mobile     App
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

Booked Roundtrip Flight Hotel Valid
    [Tags]             TC-002   mobile     App
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
    User memilih Flight Hotel
    User menekan tombol Book
    User memilih harga tiket yang diinginkan 
    User menekan tombol confirm 
    Verifikasi booking berhasil

Booked Roundtrip Flight Hotel + 1 Day Valid
    [Tags]             TC-003   mobile     App
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
    User memilih Flight Hotel
    User memilih Flight 1 Day
    User menekan tombol Book
    User memilih harga tiket yang diinginkan 
    User menekan tombol confirm 
    Verifikasi booking berhasil

Booked Roundtrip Flight + 1 Day Valid
    [Tags]             TC-004  mobile     App
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
    User memilih Flight 1 Day
    User menekan tombol Book
    User memilih harga tiket yang diinginkan 
    User menekan tombol confirm 
    Verifikasi booking berhasil








