*** Settings ***
Library  Browser

*** Variables ***
${PageTitleElement}             //div[@id='header_container']//span[@class='title']
${CartLogoCountElement}         //span[@class='shopping_cart_badge']
${AddToCartButtonElement}       //div[@class='inventory_item']//button[contains(@id,'add-to-cart')]
${RemoveFromCartButtonElement}  //div[@class='inventory_item']//button[contains(@id,'remove-')]
${CartButtonElement}            .shopping_cart_link

*** Keywords ***
Products Page Should Be Opened
    Get Text  ${PageTitleElement}   ==   PRODUCTS

Add Item To Cart  
    [Arguments]   ${Index}
    Click    (${AddToCartButtonElement})[${Index}]

Remove Item From Cart  
    [Arguments]   ${Index}
    Click    (${RemoveFromCartButtonElement})[${Index}]

Click Cart Button 
    Click     ${CartButtonElement}

Cart Items Count Should Be
    [Arguments]    ${ExpectedCount}
    IF  ${ExpectedCount} == 0      
        Get Element Count  ${CartLogoCountElement}  ==  0
    ELSE         
        Get Text   ${CartLogoCountElement}  ==  ${ExpectedCount}
    END
   
    







