*** Settings ***
Library  Browser

Resource   Pages/LoginPage.robot  
Resource   Pages/ProductsPage.robot
Resource   Pages/CartPage.robot
Resource   Pages/CheckoutInformationPage.robot
Resource   Pages/CheckoutOverviewPage.robot
Resource   Pages/CheckoutCompletePage.robot

*** Test Cases ***
Valid Login
    LoginPage.Open Login Page    
    LoginPage.Input Username                    standard_user 
    LoginPage.Input Password                    secret_sauce
    LoginPage.Click Login Button
    ProductsPage.Products Page Should Be Opened
    ProductsPage.Add Item To Cart               1
    ProductsPage.Cart Items Count Should Be     1
    ProductsPage.Remove Item From Cart          1
    ProductsPage.Cart Items Count Should Be     0

Make An Order
    LoginPage.Open Login Page    
    LoginPage.Input Username                    standard_user 
    LoginPage.Input Password                    secret_sauce
    LoginPage.Click Login Button
    ProductsPage.Products Page Should Be Opened
    ProductsPage.Add Item To Cart               1
    ProductsPage.Add Item To Cart               3
    ProductsPage.Cart Items Count Should Be     2
    ProductsPage.Click Cart Button   
    CartPage.Cart Page Should Be Opened   
    CartPage.Cart Items Count Should Be         2
    CartPage.Click Checkout Button   
    CheckoutInformationPage.Checkout Information Page Should Be Opened 
    CheckoutInformationPage.Input First Name    Test first name
    CheckoutInformationPage.Input Last Name     Test last name      
    CheckoutInformationPage.Input Zip Code      123
    CheckoutInformationPage.Click Continue Button
    CheckoutOverviewPage.Checkout Overview Page Should Be Opened  
    CheckoutOverviewPage.Quantity Of Each Item Should Be Displayed   2  
    CheckoutOverviewPage.Total Payment Should Be Displayed           86.38
    CheckoutOverviewPage.Click Finish Button     
    CheckoutCompletePage.Checkout Complete Page Should Be Opened    
    CheckoutCompletePage.Text Should Be Displayed                    THANK YOU FOR YOUR ORDER









