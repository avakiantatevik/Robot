*** Settings ***
Library  Browser

*** Variables ***
${PageTitleElement}         //div[@id='header_container']//span[@class='title']
${FinishButtonElement}      \#finish
${TotalPaymentElement}      .summary_total_label
${QuantityElement}          .cart_quantity

*** Keywords ***
Checkout Overview Page Should Be Opened
    Get Text  ${PageTitleElement}   ==   CHECKOUT: OVERVIEW

Quantity Of Each Item Should Be Displayed 
    [Arguments]    ${Count}
    Get Element Count    ${QuantityElement}    ==    ${Count}


Total Payment Should Be Displayed 
    [Arguments]    ${PaymentsText}
    Get Text  ${TotalPaymentElement}   ==   Total: $${PaymentsText}

Click Finish Button 
    Click    ${FinishButtonElement}