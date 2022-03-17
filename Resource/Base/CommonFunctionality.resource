*** Settings ***
Documentation   This file handles browser configuration, resuable scripts.

Library     SeleniumLibrary

*** Variables ***
${BROWSER_NAME}    chrome
${url}    https://opensource-demo.orangehrmlive.com/


*** Keywords ***
Launch Browser and navigate to url
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To  url=${url}
