*** Settings ***
Library    Browser
Library    SeleniumLibrary
Library    BuiltIn

*** Variables ***

*** Test Cases ***
Robot Framework fundamentals training is one day
    Browser.Open Browser    headless=${FALSE}
    New Page    https://www.eficode.com/sv/?utm_source=google.com&utm_medium=organic
    Click    css=a.cd-search-trigger
    Click    id=cd-search
    Fill Text    xpath=//input[@type="search"]    robot framework
    Browser.Press Keys    xpath=//input[@type="search"]    Enter
    Click    xpath=//ul[@id="hsresults"]/li[1]/a
    Browser.Get Text    xpath=//div[@class="embed-responsive-item"]/div[1]/div[2]/p[2]/strong[contains(text(), 'One day')]
   
*** Keywords ***
Search
  
