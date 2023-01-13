*** Settings ***
Library    Selenium2Library
*** Variables ***
${BROWSER}    chrome

*** Test Cases ***
verify if the homepage is reachable
    Open Browser    https://icp.edu.pk     ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains    Islamia College Peshawar 
    #assertion
    Close Browser

verify if search function is working using Enter key
    Open Browser    https://icp.edu.pk     ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains    Islamia College Peshawar 
    #assertion
    Input Text    css=#gsc-i-id1    jobs
    Press keys    css=#gsc-i-id1    ENTER
    Wait Until Page Contains    Sort by:
    Close Browser

verify if search function is working using search button
    [Tags]    searchbutton
    Open Browser    https://icp.edu.pk     ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains    Islamia College Peshawar 
    #assertion
    Input Text    css=#gsc-i-id1    jobs
    Click Button    xpath=//*[@id="___gcse_0"]/div/form/table/tbody/tr/td[2]/button
    Wait Until Page Contains    Sort by:
    Close Browser
*** Keywords ***