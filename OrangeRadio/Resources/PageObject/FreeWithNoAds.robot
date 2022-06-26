*** Settings ***
Library    AppiumLibrary
Variables    ../../Data/Englishtranslation.yaml
Variables    ../../Data/Locators.yaml   

*** Variables ***


*** Keywords ***
Free slide heading
    ${Actual}=      Get Text        ${FreeSlideHeadingLocator}
    ${Expected}=    Set Variable    ${FreeSlideHeading}
    Should Be Equal As Strings      ${Actual}    ${Expected}   
    
Free slide description
    ${Actual}=      Get Text        ${FreeSlideDescripLocator}
    ${Expected}=    Set Variable    ${FreeSlideDescrip}
    Should Be Equal As Strings      ${Actual}    ${Expected}  
    
Free start listening button
    ${Actual}=      Get Text        ${FreeStartBtnLocator}
    ${Expected}=    Set Variable    ${FreeStartBtn} 
    Should Be Equal As Strings      ${Actual}    ${Expected}  
 
Free Next button   
    ${Actual}=      Get Text        ${FreeNextBtnLocator}
    ${Expected}=    Set Variable    ${FreeNextBtn}  
    Should Be Equal As Strings      ${Actual}    ${Expected}  