*** Settings ***
Library  Browser

*** Variables ***
${LoginUrl}             https://www.saucedemo.com/  
${UsernameElement}       //*[@id='user-name'] 
${PasswordElement}       //*[@id='password']  
${LoginButtonElement}    //input[@value='Login'] 

*** Keywords ***
Open Login Page
    Open Browser  ${LoginUrl} 

Input Username
    [Arguments]    ${Username}
    Type Text  ${UsernameElement}  ${Username}

Input Password
    [Arguments]    ${Password}
    Type Text  ${PasswordElement}  ${Password}

Click Login Button
    Click  ${LoginButtonElement}








