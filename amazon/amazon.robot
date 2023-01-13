*** Settings ***
Library    Selenium2Library
*** Variables ***

*** Test Cases ***
user must be signed in before checkout
    [Tags]    Smoke
    Open Browser     http://www.amazon.com    chrome
    Maximize Browser Window
    Wait Until Page Contains    Today's Deals
    Page Should Contain    Today's Deals
    Input Text   css=#twotabsearchtextbox    playstation 5 controller
    Press Keys    css=#twotabsearchtextbox    ENTER
    Wait Until Page Contains    results for "playstation 5 controller"
    Page Should Contain    results for "playstation 5 controller"
    Click Element    css=[data-component-id='9'] img.s-image
    Wait Until Page Contains   css=.a-button-inner #add-to-cart-button
    Page Should Contain    css=.a-button-inner #add-to-cart-button
    Click Element    css=.a-button-inner #add-to-cart-button
    Sleep    10s
    Page Should Contain    Added to Cart
    Close Browser

*** Keywords ***