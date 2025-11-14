*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Exit Browser

*** Test Cases ***
Set counter to ten
    Go To  ${HOME_URL}
    Page Should Contain  nappia painettu 0 kertaa
    Input Text  value  10
    Click Button  Aseta
    Page Should Contain  nappia painettu 10 kertaa