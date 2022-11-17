*** Settings ***
Library    Browser
Library    SeleniumLibrary
Library    BuiltIn

*** Variables ***


*** Test Cases ***
Stockholm office is visible in Sweden contact info
    Browser.Open Browser    headless=${FALSE}
    New Page    https://www.eficode.com/sv/kontakt
    Click    xpath=//li[@data-tab="tab-1"]
    Browser.Get Text    xpath=//div[@id="hs_cos_wrapper_widget_1615464385304"]/section/div/div[2]/div[3]/div/div[2]/h4[contains(text(), 'Stockholm')]
