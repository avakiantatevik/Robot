*** Settings ***
Library  Browser

*** Variables ***
${PageTitleElement}         //div[@id='header_container']//span[@class='title']
${CartItemElement}          .cart_item
${CheckounButtonElement}    \#checkout

*** Keywords ***
Cart Page Should Be Opened
    Get Text  ${PageTitleElement}   ==   YOUR CART

Click Checkout Button
     Click    ${CheckounButtonElement}
 
 Cart Items Count Should Be    
    [Arguments]  ${Count}
    Get Element Count    ${CartItemElement}  ==   ${Count}

    
