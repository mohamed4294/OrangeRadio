*** Settings ***
Library          AppiumLibrary
Resource         ../Resources/Common.robot   
Suite Setup       Open the application
Suite Teardown    Close the application

*** Test Cases ***
Validate_that_the_Welcome_screen_content_is_correct
    Welcome slide heading
    Welcome slide description
    Welcome start listening button
    Welcome Next button

    
Validate that the free with no advertising page content is correct
    Click Element                    ${NextBtnWelcomeLocator}
    Wait Until Element Is Visible    ${FreenextBtnLocator}
    Free slide heading
    Free slide description
    Free start listening button
    Free Next button


Validate that the bottom navigation page content is correct
    Click Element                    ${FreenextBtnLocator}
    Wait Until Element Is Visible    ${BottomnextBtnLocator}
    Bottom slide heading
    Bottom slide description
    Bottom start listening button
    Bottom Next button

Validate that the favourites page content is correct 
    Click Element                    ${BottomnextBtnLocator}
    Wait Until Element Is Visible    ${FavnextBtnLocator}
    Favourites.Assertion for the slide heading
    Favourites.Assertion for the slide description
    Favourites.Assertion for start listening button
    Favourites.Assertion for Next button

Validate that the Sleep timer page content is correct 
    Click Element                    ${FavnextBtnLocator}
    Wait Until Element Is Visible    ${SleepnextBtnLocator}
    Sleep slide heading
    Sleep slide description
    Sleep start listening button
    Sleep Next button
    
Validate that the Subscriptions page content is correct 
    Click Element                    ${SleepnextBtnLocator}
    Wait Until Element Is Visible    ${SubfinishBtnLocator} 
    Subscription slide heading
    Subscription slide description
    Subscription start listening button
    Subscription finish button 

     
Validate that the start listening bottom working correctly 
    Clear orange radio cash
    Click Element                    ${StartBtnWelcomeLocator}
    Welcome start listening


Clear data 
    Clear orange radio cash

         