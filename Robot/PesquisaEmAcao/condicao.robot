*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Test Keyword 1
    Log To Console  executado keyword1 - items esperados encontrados
    Close Browser
Test Keyword 2
    Log To Console  executado keyword2 - mais items do que o esperado
    Close Browser
Test Keyword 3
    Log To Console  exception
    Close Browser

*** Test Cases ***
Caso de teste utilizando if/else
    [Documentation]  Caso de teste utilizando if/else
        
    Open Browser   https://www.saucedemo.com/  chrome
    Maximize Browser Window
    Input Text  id:user-name  standard_user
    Input Text  id:password  secret_sauce
    Click Button  xpath://*[@id="login-button"]
    
    ${items_on_page}=  Get Element Count  xpath://*[@id="inventory_container"]/div

    Run Keyword If  ${items_on_page} < 10  Test Keyword 1  
    ...  ELSE IF  ${items_on_page} > 10  Test Keyword 2
    ...  ELSE  Test Keyword 3