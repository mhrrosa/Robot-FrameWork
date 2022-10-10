*** Settings ***
Library    SeleniumLibrary

*** Variables ***
@{ROBOTS}=   Coritiba   maior vitorioso do mundo    maior campeão paranaense    maior time do parana

*** Keywords ***

*** Test Cases ***
Caso de teste utilizando laco
    [Documentation]  Caso de teste utilizando laco
        
    Open Browser   https://www.google.com.br/  chrome
    Maximize Browser Window




    @{results_on_page}=  Get WebElements  xpath://*[@id="rso"]

    FOR  ${element}  IN  @{ROBOTS}
            Input Text  name:q   ${element}
            Press Keys   name:q   ENTER
            Go Back
       
    END

 