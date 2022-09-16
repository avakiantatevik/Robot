*** Settings ***
Library  Browser

*** Variables ***
${PageTitleElement}         //div[@id='header_container']//span[@class='title']
${HeaderTextElement}        .complete-header

*** Keywords ***
Checkout Complete Page Should Be Opened
    Get Text  ${PageTitleElement}   ==   CHECKOUT: COMPLETE!

Text Should Be Displayed
    [Arguments]    ${Text}
    Get Text   ${HeaderTextElement}   ==    ${Text}
