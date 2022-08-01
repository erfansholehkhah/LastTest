*** Settings ***
Library  SeleniumLibrary





*** Keywords ***

search for the item
    Wait Until Element Is Visible  nav-logo
    click element  xpath = //*[@id="nav-search-bar-form"]/div[2]
    element should be visible  twotabsearchtextbox
    input text  twotabsearchtextbox  iphone 10s
    click element  nav-search-submit-button
    sleep  5s



select the desire one
    @{Results_on_page}  Get WebElements  xpath = //*[@id="search"]/div[1]
    FOR  ${element}  IN  @{Results_on_page}
          ${text}  get text  ${element}
    END
    click element  xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[3]/div/div/div/div/div/div[2]/div/div/div[1]
    click button  xpath = //*[@id="a-autoid-10-announce"]

    click element  xpath =//*[@id="color_name_2"]








#Checkout
   #click button  xpath =//*[@id="addToCart_feature_div"]



get out
    log  The test is done for now





