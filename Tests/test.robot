*** Settings ***
Documentation  This is just a test
Library  SeleniumLibrary
Resource  ../Resources/PO/App.robot
Resource  ../Resources/PO/common.robot
Test Setup    Begin Web Test
Test Teardown  End up the test



*** Variables ***
${Browser} =  Chrome
${url} =  https://amazon.com

*** Test Cases ***

Take the itam
    [Tags]   Smoke  test

    search for the item
    select the desire one
    #Checkout

    get out



