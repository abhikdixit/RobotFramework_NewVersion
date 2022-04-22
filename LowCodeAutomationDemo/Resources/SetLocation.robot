*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/ChromeOptions.robot

*** Variables ***
${zipcode}       77054

*** Keywords ***
Select Location
    Click Element   //button[@id='web-store-id-msg-btn']
    Wait Until Element Is Visible       xpath=//input[@id='zip-or-city-state']
    Input Text     //input[@id='zip-or-city-state']    ${zipcode}
    Click Button   //button[normalize-space()='Lookup']
    Wait Until Element Is Visible   css:button[aria-label='Set Houston South Main as my store']
    Click Button   css:button[aria-label='Set Houston South Main as my store']


