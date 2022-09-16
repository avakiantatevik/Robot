*** Settings ***
Library  Browser

*** Variables ***
${PageTitleElement}         //div[@id='header_container']//span[@class='title']
${FirstNameElement}         \#first-name
${LastNameElement}          \#last-name
${ZipCodeElement}           \#postal-code
${ContinueButtonElement}    \#continue

*** Keywords ***
Checkout Information Page Should Be Opened
    Get Text  ${PageTitleElement}   ==   CHECKOUT: YOUR INFORMATION

Input First Name
    [Arguments]    ${FirstName}
    Type Text      ${FirstNameElement}  ${FirstName}

Input Last Name
    [Arguments]    ${LastName}
    Type Text      ${LastNameElement}  ${LastName}

Input Zip Code
    [Arguments]    ${ZipCode}
    Type Text      ${ZipCodeElement}  ${ZipCode}

Click Continue Button
     Click    ${ContinueButtonElement}     










