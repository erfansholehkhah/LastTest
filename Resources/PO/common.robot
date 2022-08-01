*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${Browser} =  Chrome
${url} =  https://amazon.com

*** Keywords ***

Begin Web Test
    open browser  ${url}  ${Browser}
    maximize browser window

End up the test
    close all browsers
